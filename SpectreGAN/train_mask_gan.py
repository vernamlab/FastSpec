# Copyright 2017 The TensorFlow Authors All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import collections

from functools import partial
import os
import time
# Dependency imports

import numpy as np
from six.moves import xrange
import tensorflow as tf
from data import spec_loader
from model_utils import helper
from model_utils import model_construction
from model_utils import model_losses
from model_utils import model_optimization

# Data.
from model_utils import model_utils
from models import evaluation_utils
from models import rollout

np.set_printoptions(precision=3)
np.set_printoptions(suppress=True)

MODE_TRAIN = 'TRAIN'
## Binary and setup FLAGS.
tf.app.flags.DEFINE_enum(
    'mode', 'TRAIN', [MODE_TRAIN],
    'What this binary will do.')
tf.app.flags.DEFINE_string('master', '',
                           """Name of the TensorFlow master to use.""")
tf.app.flags.DEFINE_string('eval_master', '',
                           """Name prefix of the Tensorflow eval master.""")
tf.app.flags.DEFINE_integer('task', 0,
                            """Task id of the replica running the training.""")
tf.app.flags.DEFINE_integer('ps_tasks', 0, """Number of tasks in the ps job.
                            If 0 no ps job is used.""")

## General FLAGS.
tf.app.flags.DEFINE_string(
    'hparams', '', 'Comma separated list of name=value hyperparameter pairs.')
tf.app.flags.DEFINE_integer('batch_size', 20, 'The batch size.')
tf.app.flags.DEFINE_integer('vocab_size', 10000, 'The vocabulary size.')
tf.app.flags.DEFINE_integer('sequence_length', 20, 'The sequence length.')
tf.app.flags.DEFINE_integer('max_steps', 1000000,
                            'Maximum number of steps to run.')
tf.app.flags.DEFINE_string(
    'mask_strategy', 'random', 'Strategy for masking the words.  Determine the '
    'characterisitics of how the words are dropped out.  One of '
    "['contiguous', 'random'].")
tf.app.flags.DEFINE_float('is_present_rate', 0.5,
                          'Percent of tokens present in the forward sequence.')
tf.app.flags.DEFINE_float('is_present_rate_decay', None, 'Decay rate for the '
                          'percent of words that are real (are present).')
tf.app.flags.DEFINE_string(
    'generator_model', 'seq2seq_vd',
    "Type of Generator model.")
tf.app.flags.DEFINE_string(
    'attention_option', 'luong',
    "Attention mechanism.")
tf.app.flags.DEFINE_string(
    'discriminator_model', 'seq2seq_vd',
    "Type of Discriminator model."
)
tf.app.flags.DEFINE_boolean('seq2seq_share_embedding', True,
                            'Whether to share the '
                            'embeddings between the encoder and decoder.')
tf.app.flags.DEFINE_boolean(
    'dis_share_embedding', False, 'Whether to share the '
    'embeddings between the generator and discriminator.')
tf.app.flags.DEFINE_boolean('dis_update_share_embedding', False, 'Whether the '
                            'discriminator should update the shared embedding.')
tf.app.flags.DEFINE_boolean('use_gen_mode', False,
                            'Use the mode of the generator '
                            'to produce samples.')
tf.app.flags.DEFINE_boolean('critic_update_dis_vars', False,
                            'Whether the critic '
                            'updates the discriminator variables.')

## Training FLAGS.
tf.app.flags.DEFINE_string(
    'gen_training_strategy', 'reinforce',
    "Method for training the Generator. One of ['cross_entropy', 'reinforce']")
tf.app.flags.DEFINE_string(
    'generator_optimizer', 'adam',
    "Type of Generator optimizer.  One of ['sgd', 'adam']")
tf.app.flags.DEFINE_float('grad_clipping', 10., 'Norm for gradient clipping.')
tf.app.flags.DEFINE_float('advantage_clipping', 5., 'Clipping for advantages.')
tf.app.flags.DEFINE_string(
    'baseline_method', None,
    "Approach for baseline.  One of ['critic', 'dis_batch', 'ema', None]")
tf.app.flags.DEFINE_float('perplexity_threshold', 15000,
                          'Limit for perplexity before terminating job.')
tf.app.flags.DEFINE_float('keep_prob', 0.5,
                          'Probability for keeping parameter for dropout.')

## Logging and evaluation FLAGS.
tf.app.flags.DEFINE_integer('print_every', 250,
                            'Frequency to print and log the '
                            'outputs of the model.')
tf.app.flags.DEFINE_integer('max_num_to_print', 5,
                            'Number of samples to log/print.')
tf.app.flags.DEFINE_integer('summaries_every', 100,
                            'Frequency to compute summaries.')

tf.app.flags.DEFINE_integer(
    'epoch_size_override', None,
    'If an integer, this dictates the size of the epochs and will potentially '
    'not iterate over all the data.')
tf.app.flags.DEFINE_integer('eval_epoch_size_override', None,
                            'Number of evaluation steps.')

## Directories and checkpoints.
tf.app.flags.DEFINE_string('base_directory', '/tmp/maskGAN_v0.00',
                           'Base directory for the logging, events and graph.')
tf.app.flags.DEFINE_string('data_set', 'spec', 'Data set to operate on.')
tf.app.flags.DEFINE_string('data_dir', '/dataset',
                           'Directory for the training data.')

tf.app.flags.DEFINE_string(
    'maskgan_ckpt', None,
    'Override which checkpoint file to use' )

tf.app.flags.DEFINE_boolean('wasserstein_objective', False,
                            '(DEPRECATED) Whether to use the WGAN training.')
tf.app.flags.DEFINE_integer('num_rollouts', 1,
                            'The number of rolled out predictions to make.')
tf.app.flags.DEFINE_float('c_lower', -0.01, 'Lower bound for weights.')
tf.app.flags.DEFINE_float('c_upper', 0.01, 'Upper bound for weights.')

FLAGS = tf.app.flags.FLAGS


def create_hparams():
  """Create the hparams object for generic training hyperparameters."""
  hparams = tf.contrib.training.HParams(
      gen_num_layers=2,
      dis_num_layers=2,
      gen_rnn_size=740,
      dis_rnn_size=740,
      gen_learning_rate=5e-4,
      dis_learning_rate=5e-3,
      critic_learning_rate=5e-3,
      dis_train_iterations=1,
      gen_learning_rate_decay=1.0,
      gen_full_learning_rate_steps=1e7,
      baseline_decay=0.999999,
      rl_discount_rate=0.9,
      gen_vd_keep_prob=0.5,
      dis_vd_keep_prob=0.5,
      dis_pretrain_learning_rate=5e-3,
      dis_num_filters=128,
      dis_hidden_dim=128,
      gen_nas_keep_prob_0=0.85,
      gen_nas_keep_prob_1=0.55,
      dis_nas_keep_prob_0=0.85,
      dis_nas_keep_prob_1=0.55)
  # Command line flags override any of the preceding hyperparameter values.
  if FLAGS.hparams:
    hparams = hparams.parse(FLAGS.hparams)
  return hparams


def create_MaskGAN(hparams, is_training):
  """Create the MaskGAN model.

  Args:
    hparams:  Hyperparameters for the MaskGAN.
    is_training:  Boolean indicating operational mode (train/inference).
      evaluated with a teacher forcing regime.

  Return:
    model:  Namedtuple for specifying the MaskGAN.
  """
  global_step = tf.Variable(0, name='global_step', trainable=False)

  new_learning_rate = tf.placeholder(tf.float32, [], name='new_learning_rate')
  learning_rate = tf.Variable(0.0, name='learning_rate', trainable=False)
  learning_rate_update = tf.assign(learning_rate, new_learning_rate)

  new_rate = tf.placeholder(tf.float32, [], name='new_rate')
  percent_real_var = tf.Variable(0.0, trainable=False)
  percent_real_update = tf.assign(percent_real_var, new_rate)

  ## Placeholders.
  inputs = tf.placeholder(
      tf.int32, shape=[FLAGS.batch_size, FLAGS.sequence_length])
  sequence_length = tf.placeholder(
      tf.int32, shape=[FLAGS.batch_size,])  
  targets = tf.placeholder(
      tf.int32, shape=[FLAGS.batch_size, FLAGS.sequence_length])
  present = tf.placeholder(
      tf.bool, shape=[FLAGS.batch_size, FLAGS.sequence_length])

  ## Real Sequence is the targets.
  real_sequence = targets
  ## Fake Sequence from the Generator.
  (fake_sequence, fake_logits, fake_log_probs, fake_gen_initial_state,
   fake_gen_final_state, _) = model_construction.create_generator(
       hparams,
       inputs,
       sequence_length,
       targets,
       present,
       is_training=is_training,
       is_validating=False)
  (_, eval_logits, _, eval_initial_state, eval_final_state,
   _) = model_construction.create_generator(
       hparams,
       inputs,
       sequence_length,
       targets,
       present,
       is_training=False,
       is_validating=True,
       reuse=True)

  ## Discriminator.
  fake_predictions = model_construction.create_discriminator(
      hparams,
      fake_sequence,
      sequence_length,
      is_training=is_training,
      inputs=inputs,
      present=present)
  real_predictions = model_construction.create_discriminator(
      hparams,
      real_sequence,
      sequence_length,
      is_training=is_training,
      reuse=True,
      inputs=inputs,
      present=present)

  ##################################################
  #                    MASK LOSS                   #
  ##################################################
  def mask_loss(loss):
    if loss is not None:
      zeros = tf.zeros(shape=(FLAGS.batch_size, FLAGS.sequence_length))
      mask = tf.sequence_mask(sequence_length, maxlen=FLAGS.sequence_length)
      return tf.where(condition=mask, x=loss, y=zeros)
    else:
      return loss
  ##################################################
  
  ## Critic.
  # The critic will be used to estimate the forward rewards to the Generator.
  if FLAGS.baseline_method == 'critic':
    est_state_values = model_construction.create_critic(
        hparams, fake_sequence, is_training=is_training, sequence_length=sequence_length)
  else:
    est_state_values = None

  ## Discriminator Loss.
  [dis_loss, dis_loss_fake, dis_loss_real, dis_real_acc, dis_fake_acc, sample1, dis_loss_fak] = model_losses.create_dis_loss(
      fake_predictions, real_predictions, present, mask_loss, sequence_length)

  ## Average log-perplexity for only missing words.  However, to do this,
  # the logits are still computed using teacher forcing, that is, the ground
  # truth tokens are fed in at each time point to be valid.
  avg_log_perplexity = model_losses.calculate_log_perplexity(
      eval_logits, targets, present)

  ## Generator Objective.
  # 1.  Cross Entropy losses on missing tokens.
  fake_cross_entropy_losses = model_losses.create_masked_cross_entropy_loss(
      targets, present, fake_logits)
  fake_cross_entropy_losses = mask_loss(fake_cross_entropy_losses)
  #  2.  GAN REINFORCE losses.
  [
      fake_RL_loss, fake_log_probs, fake_rewards, fake_advantages,
      fake_baselines, fake_averages_op, critic_loss, cumulative_rewards
  ] = model_losses.calculate_reinforce_objective(
      hparams, fake_log_probs, fake_predictions, present, est_state_values)
  ##################################################
  ############         MASK LOSS           #########
  ##################################################
  fake_log_probs = mask_loss(fake_log_probs)
  fake_rewards = mask_loss (fake_rewards)
  fake_advantages = mask_loss(fake_advantages)
  fake_baselines = mask_loss(fake_baselines)
  fake_averages_op = mask_loss(fake_averages_op)
  ##################################################
  ##  Generator Train Op.
  # 1.  Cross-Entropy.
  if FLAGS.gen_training_strategy == 'cross_entropy':
    gen_loss = tf.reduce_mean(fake_cross_entropy_losses)
    [gen_train_op, gen_grads,
     gen_vars] = model_optimization.create_gen_train_op(
         hparams, learning_rate, gen_loss, global_step, mode='MINIMIZE')

  # 2.  GAN (REINFORCE)
  elif FLAGS.gen_training_strategy == 'reinforce':
    gen_loss = fake_RL_loss
    [gen_train_op, gen_grads,
     gen_vars] = model_optimization.create_reinforce_gen_train_op(
         hparams, learning_rate, gen_loss, fake_averages_op, global_step)
  else:
    raise NotImplementedError

  ## Discriminator Train Op.
  dis_train_op, dis_grads, dis_vars = model_optimization.create_dis_train_op(
      hparams, dis_loss, global_step)

  ## Critic Train Op.
  if critic_loss is not None:
    [critic_train_op, _, _] = model_optimization.create_critic_train_op(
        hparams, critic_loss, global_step)
    if FLAGS.gen_training_strategy == 'reinforce':
      dis_train_op = tf.group(dis_train_op, critic_train_op)

  ## Summaries.
  with tf.name_scope('general'):
    tf.summary.scalar('percent_real', percent_real_var)
    tf.summary.scalar('learning_rate', learning_rate)

  with tf.name_scope('generator_objectives'):
    tf.summary.scalar('gen_objective', tf.reduce_mean(gen_loss))
    tf.summary.scalar('gen_loss_cross_entropy',
                      tf.reduce_mean(fake_cross_entropy_losses))

  with tf.name_scope('REINFORCE'):
    with tf.name_scope('objective'):
      tf.summary.scalar('fake_RL_loss', tf.reduce_mean(fake_RL_loss))

    with tf.name_scope('rewards'):
      helper.variable_summaries(cumulative_rewards, 'rewards')

    with tf.name_scope('advantages'):
      helper.variable_summaries(fake_advantages, 'advantages')

    with tf.name_scope('baselines'):
      helper.variable_summaries(fake_baselines, 'baselines')

    with tf.name_scope('log_probs'):
      helper.variable_summaries(fake_log_probs, 'log_probs')

  with tf.name_scope('discriminator_losses'):
    tf.summary.scalar('dis_loss', dis_loss)
    tf.summary.scalar('dis_loss_fake_sequence', dis_loss_fake)
    tf.summary.scalar('dis_loss_prob_fake_sequence', tf.exp(-dis_loss_fake))
    tf.summary.scalar('dis_loss_real_sequence', dis_loss_real)
    tf.summary.scalar('dis_loss_prob_real_sequence', tf.exp(-dis_loss_real))

  if critic_loss is not None:
    with tf.name_scope('critic_losses'):
      tf.summary.scalar('critic_loss', critic_loss)

  with tf.name_scope('logits'):
    helper.variable_summaries(fake_logits, 'fake_logits')

  for v, g in zip(gen_vars, gen_grads):
    helper.variable_summaries(v, v.op.name)
    helper.variable_summaries(g, 'grad/' + v.op.name)

  for v, g in zip(dis_vars, dis_grads):
    helper.variable_summaries(v, v.op.name)
    helper.variable_summaries(g, 'grad/' + v.op.name)

  merge_summaries_op = tf.summary.merge_all()
  text_summary_placeholder = tf.placeholder(tf.string)
  text_summary_op = tf.summary.text('Samples', text_summary_placeholder)

  # Model saver.
  saver = tf.train.Saver( keep_checkpoint_every_n_hours=1, max_to_keep=100)

  # Named tuple that captures elements of the MaskGAN model.
  Model = collections.namedtuple('Model', [
      'inputs','sequence_length', 'targets', 'present', 'percent_real_update', 'new_rate',
      'fake_sequence', 'fake_logits', 'fake_rewards', 'fake_baselines',
      'fake_advantages', 'fake_log_probs', 'fake_predictions',
      'real_predictions', 'fake_cross_entropy_losses', 'fake_gen_initial_state',
      'fake_gen_final_state', 'eval_initial_state', 'eval_final_state',
      'avg_log_perplexity', 'dis_loss', 'gen_loss', 'critic_loss',
      'cumulative_rewards', 'dis_train_op', 'gen_train_op',
      'merge_summaries_op', 'global_step',
      'new_learning_rate', 'learning_rate_update', 'saver', 'text_summary_op',
      'text_summary_placeholder', 'dis_real_acc', 'dis_fake_acc','sample1', 'dis_loss_fak'
  ])

  model = Model(
      inputs,sequence_length, targets, present, percent_real_update, new_rate, fake_sequence,
      fake_logits, fake_rewards, fake_baselines, fake_advantages,
      fake_log_probs, fake_predictions, real_predictions,
      fake_cross_entropy_losses, fake_gen_initial_state, fake_gen_final_state,
      eval_initial_state, eval_final_state, avg_log_perplexity, dis_loss,
      gen_loss, critic_loss, cumulative_rewards, dis_train_op, gen_train_op,
      merge_summaries_op, global_step,
      new_learning_rate, learning_rate_update, saver, text_summary_op,
      text_summary_placeholder, dis_real_acc, dis_fake_acc, sample1, dis_loss_fak)
  return model

def get_iterator(data):
  """Return the data iterator."""
  iterator = spec_loader.spec_iterator(data, FLAGS.batch_size,
                                         FLAGS.sequence_length)                                       
  return iterator


def train_model(hparams, data, log_dir, log, id_to_word):
  """Train model.

  Args:
    hparams: Hyperparameters for the MaskGAN.
    data: Data to evaluate.
    log_dir: Directory to save checkpoints.
    log: Readable log for the experiment.
    id_to_word: Dictionary of indices to words.
  """
  print('Training model.')
  tf.logging.info('Training model.')

  # Boolean indicating operational mode.
  is_training = True

  # Write all the information to the logs.
  log.write('hparams\n')
  log.write(str(hparams))
  log.flush()

  is_chief = FLAGS.task == 0

  with tf.Graph().as_default():
    with tf.device(tf.train.replica_device_setter(FLAGS.ps_tasks)):
      container_name = ''
      with tf.container(container_name):
        # Construct the model.
        if FLAGS.num_rollouts == 1:
          model = create_MaskGAN(hparams, is_training)
        elif FLAGS.num_rollouts > 1:
          model = rollout.create_rollout_MaskGAN(hparams, is_training)
        else:
          raise ValueError
        
        print('\nTrainable Variables in Graph:')
        for v in tf.trainable_variables():
          print(v)
        
        ## Retrieve the initial savers.
        init_savers = model_utils.retrieve_init_savers(hparams)

        ## Initial saver function to supervisor.
        init_fn = partial(model_utils.init_fn, init_savers)

        # Create the supervisor.  It will take care of initialization,
        # summaries, checkpoints, and recovery.
        sv = tf.train.Supervisor(
            logdir=log_dir,
            is_chief=is_chief,
            saver=model.saver,
            global_step=model.global_step,
            save_model_secs=60,
            recovery_wait_secs=30,
            summary_op=None,
            init_fn=init_fn)
        
        # Get an initialized, and possibly recovered session.  Launch the
        # services: Checkpointing, Summaries, step counting.
        #
        # When multiple replicas of this program are running the services are
        # only launched by the 'chief' replica.
        
        with sv.managed_session(FLAGS.master) as sess:
         
          # Initial indicators for printing and summarizing.
          print_step_division = -1
          summary_step_division = -1
          # Run iterative computation in a loop.
          while not sv.ShouldStop():
            is_present_rate = FLAGS.is_present_rate

            if FLAGS.is_present_rate_decay is not None:
              is_present_rate *= (1. - FLAGS.is_present_rate_decay)

            model_utils.assign_percent_real(sess, model.percent_real_update,
                                            model.new_rate, is_present_rate)

            # GAN training.
            avg_epoch_gen_loss, avg_epoch_dis_loss = [], []
            cumulative_costs = 0.
            gen_iters = 0
            
            [gen_initial_state_eval, fake_gen_initial_state_eval] = sess.run(
                [model.eval_initial_state, model.fake_gen_initial_state])
            dis_initial_state_eval = fake_gen_initial_state_eval

            # Save zeros state to reset later.
            zeros_state = fake_gen_initial_state_eval

            ## Offset Discriminator.
            if FLAGS.ps_tasks == 0:
              dis_offset = 1
            else:
              dis_offset = FLAGS.task * 1000 + 1
            dis_iterator = get_iterator(data)
            for i in range(dis_offset):
              try:
                dis_x, dis_x_len, dis_y, dis_y_len, _ = next(dis_iterator)
              except StopIteration:
                dis_iterator = get_iterator(data)
                dis_initial_state_eval = zeros_state
                dis_x, dis_x_len, dis_y, dis_y_len, _ = next(dis_iterator)

              p = model_utils.generate_mask(dis_x_len)

              # Construct the train feed.
              train_feed = {
                  model.inputs: dis_x,
                  model.sequence_length: dis_x_len,
                  model.targets: dis_y,
                  model.present: p
              }                  
              # Statefulness of the Generator being used for Discriminator.
              for i, (c, h) in enumerate(model.fake_gen_initial_state):
                train_feed[c] = dis_initial_state_eval[i].c
                train_feed[h] = dis_initial_state_eval[i].h

              # Determine the state had the Generator run over real data.  We
              # use this state for the Discriminator.
              [dis_initial_state_eval] = sess.run(
                  [model.fake_gen_final_state], train_feed)

            ## Training loop.
            iterator = get_iterator(data)
            gen_initial_state_eval = zeros_state

            if FLAGS.ps_tasks > 0:
              gen_offset = FLAGS.task * 1000 + 1
              for i in range(gen_offset):
                try:
                  next(iterator)
                except StopIteration:
                  dis_iterator = get_iterator(data)
                  dis_initial_state_eval = zeros_state
                  next(dis_iterator)

            for x,x_len, y, _ ,_ in iterator:
              for _ in xrange(hparams.dis_train_iterations):
                try:
                  dis_x, dis_x_len, dis_y, dis_y_len, _= next(dis_iterator)
                except StopIteration:
                  dis_iterator = get_iterator(data)
                  dis_initial_state_eval = zeros_state
                  dis_x, dis_x_len, dis_y, dis_y_len, _ = next(dis_iterator)

                  [dis_initial_state_eval] = sess.run(
                      [model.fake_gen_initial_state])

                p = model_utils.generate_mask(dis_x_len)

                # Construct the train feed.
                train_feed = {
                    model.inputs: dis_x,
                    model.sequence_length: dis_x_len,
                    model.targets: dis_y,
                    model.present: p
                }

                # Statefulness for the Discriminator.
                for i, (c, h) in enumerate(model.fake_gen_initial_state):
                  train_feed[c] = dis_initial_state_eval[i].c
                  train_feed[h] = dis_initial_state_eval[i].h

                _, dis_loss_eval, step, dis_real_acc, dis_fake_acc, sample1 = sess.run(
                    [model.dis_train_op, model.dis_loss, model.global_step, model.dis_real_acc, model.dis_fake_acc, model.sample1],
                    feed_dict=train_feed)

                # Determine the state had the Generator run over real data.
                # Use this state for the Discriminator.
                [dis_initial_state_eval] = sess.run(
                    [model.fake_gen_final_state], train_feed)

              # Randomly mask out tokens.
              p = model_utils.generate_mask(x_len)

              # Construct the train feed.
              train_feed = {model.inputs: x, model.sequence_length: x_len, model.targets: y, model.present: p}

              # Statefulness for Generator.
              tf.logging.info('Generator is stateful.')
              print('Generator is stateful.')
              # Statefulness for *evaluation* Generator.
              for i, (c, h) in enumerate(model.eval_initial_state):
                train_feed[c] = gen_initial_state_eval[i].c
                train_feed[h] = gen_initial_state_eval[i].h

              # Statefulness for Generator.
              for i, (c, h) in enumerate(model.fake_gen_initial_state):
                train_feed[c] = fake_gen_initial_state_eval[i].c
                train_feed[h] = fake_gen_initial_state_eval[i].h

              # Determine whether to decay learning rate.
              lr_decay = hparams.gen_learning_rate_decay**max(
                  step + 1 - hparams.gen_full_learning_rate_steps, 0.0)

              # Assign learning rate.
              gen_learning_rate = hparams.gen_learning_rate * lr_decay
              model_utils.assign_learning_rate(sess, model.learning_rate_update,
                                               model.new_learning_rate,
                                               gen_learning_rate)

              [_, gen_loss_eval, gen_log_perplexity_eval, step] = sess.run(
                  [
                      model.gen_train_op, model.gen_loss,
                      model.avg_log_perplexity, model.global_step
                  ],
                  feed_dict=train_feed)

              cumulative_costs += gen_log_perplexity_eval
              gen_iters += 1

              # Determine the state had the Generator run over real data.
              [gen_initial_state_eval, fake_gen_initial_state_eval] = sess.run(
                  [model.eval_final_state,
                   model.fake_gen_final_state], train_feed)

              avg_epoch_dis_loss.append(dis_loss_eval)
              avg_epoch_gen_loss.append(gen_loss_eval)

              ## Summaries.
              # Calulate rolling perplexity.
              perplexity = np.exp(cumulative_costs / gen_iters)

              if is_chief and (step / FLAGS.summaries_every >
                               summary_step_division):
                summary_step_division = step / FLAGS.summaries_every

                # Confirm perplexity is not infinite.
                if (not np.isfinite(perplexity) or
                    perplexity >= FLAGS.perplexity_threshold):
                  print('Training raising FloatingPoinError.')

                # Graph summaries.
                summary_str = sess.run(
                    model.merge_summaries_op, feed_dict=train_feed)
                sv.SummaryComputed(sess, summary_str)

                # Summary:  perplexity
                summary_perplexity_str = tf.Summary(value=[
                    tf.Summary.Value(
                        tag='general/perplexity', simple_value=perplexity)
                ])
                sv.SummaryComputed(
                    sess, summary_perplexity_str, global_step=step)

              ## Printing and logging
              if is_chief and (step / FLAGS.print_every > print_step_division):
                print_step_division = (step / FLAGS.print_every)
                print('global_step: %d' % step)
                print(' perplexity: %.3f' % perplexity)
                print(' gen_learning_rate: %.6f' % gen_learning_rate)
                print('dis real acc:', dis_real_acc)
                print('dis fake acc:', dis_fake_acc)
                print('reals', sample1)
                log.write('global_step: %d\n' % step)
                log.write(' perplexity: %.3f\n' % perplexity)
                log.write(' gen_learning_rate: %.6f' % gen_learning_rate)

                evaluation_utils.print_and_log_losses(
                    log, step, is_present_rate, avg_epoch_dis_loss,
                    avg_epoch_gen_loss)

                if FLAGS.gen_training_strategy == 'reinforce':
                  evaluation_utils.generate_RL_logs(sess, model, log,
                                                    id_to_word, train_feed)
                else:
                  evaluation_utils.generate_logs(sess, model, log, id_to_word,
                                                 train_feed)
                log.flush()

  log.close()

def main(_):
  hparams = create_hparams()
  train_dir = FLAGS.base_directory + '/train'

  # Load data set.
  train_data, valid_data = spec_loader.spec_raw_data(FLAGS.data_dir)

  data_set = train_data
  # Dictionary and reverse dictionry.
  word_to_id = spec_loader.build_vocab()
  id_to_word = {v: k for k, v in word_to_id.items()}

  print('Vocab size: %d' % len(id_to_word))

  tf.gfile.MakeDirs(FLAGS.base_directory)

  log = tf.gfile.GFile(os.path.join(FLAGS.base_directory, 'train-log.txt'), mode='w')
  
  train_model(hparams, data_set, train_dir, log, id_to_word)


if __name__ == '__main__':
  tf.app.run()

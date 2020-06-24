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

"""Model utilities."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

# Dependency imports
import numpy as np

import tensorflow as tf
from model_utils import variable_mapping

FLAGS = tf.app.flags.FLAGS


def generate_mask(sequence_length):
  """Generate the mask to be fed into the model."""
  if FLAGS.mask_strategy == 'random':
    mask = []
    for seq in range(FLAGS.batch_size):
      p = np.random.choice(
          [True, False],
          size=[sequence_length[seq]],
          p=[FLAGS.is_present_rate, 1. - FLAGS.is_present_rate])
      while p.size<FLAGS.sequence_length:
        p = np.append(p, np.array([True]))
      mask.append(p)
    p = np.array(mask)

  elif FLAGS.mask_strategy == 'contiguous':
    mask = []
    for seq in range(FLAGS.batch_size):
      masked_length = int((1 - FLAGS.is_present_rate) * sequence_length[seq]) - 1
      # Determine location to start masking.
      start_mask = np.random.randint(
          1, sequence_length[seq] - masked_length + 1, size=None)
      p = np.full([sequence_length[seq]], True, dtype=bool)
      #print(masked_length)
      # Create contiguous masked section to be False.
      p[start_mask:start_mask + masked_length] = False
      #print(p)

      while p.size<FLAGS.sequence_length:
        #print(p.size, FLAGS.sequence_length)
        #input('maskk')
        p = np.append(p, np.array([True]))
      #print(p)
      mask.append(p)
    p = np.array(mask)  
  else:
    raise NotImplementedError

  return p


def assign_percent_real(session, percent_real_update, new_rate, current_rate):
  """Run assign operation where the we load the current_rate of percent
  real into a Tensorflow variable.

  Args:
    session:  Current tf.Session.
    percent_real_update: tf.assign operation.
    new_rate: tf.placeholder for the new rate.
    current_rate: Percent of tokens that are currently real.  Fake tokens
      are the ones being imputed by the Generator.
  """
  session.run(percent_real_update, feed_dict={new_rate: current_rate})


def assign_learning_rate(session, lr_update, lr_placeholder, new_lr):
  """Run assign operation where the we load the current_rate of percent
  real into a Tensorflow variable.

  Args:
    session:  Current tf.Session.
    lr_update: tf.assign operation.
    lr_placeholder: tf.placeholder for the new learning rate.
    new_lr: New learning rate to use.
  """
  session.run(lr_update, feed_dict={lr_placeholder: new_lr})


def clip_weights(variables, c_lower, c_upper):
  """Clip a list of weights to be within a certain range.

  Args:
    variables: List of tf.Variable weights.
    c_lower: Lower bound for weights.
    c_upper: Upper bound for weights.
  """
  clip_ops = []

  for var in variables:
    clipped_var = tf.clip_by_value(var, c_lower, c_upper)

    clip_ops.append(tf.assign(var, clipped_var))
  return tf.group(*clip_ops)


def retrieve_init_savers(hparams):
  """Retrieve a dictionary of all the initial savers for the models.

  Args:
    hparams:  MaskGAN hyperparameters.
  """
  ## Dictionary of init savers.
  init_savers = {}

  ## Load Generator weights from MaskGAN checkpoint.
  if FLAGS.maskgan_ckpt:
    gen_vars = [
        v for v in tf.trainable_variables() if v.op.name.startswith('gen')
    ]
    print(gen_vars)
    #input('WAIT')
    variables_in_checkpoint = tf.train.list_variables(FLAGS.maskgan_ckpt)
    print("Variables found in checkpoint file",variables_in_checkpoint)
    #input('WAIT')
    init_saver = tf.train.Saver(var_list=gen_vars)
    
    init_savers['init_saver'] = init_saver

    ## Load the Discriminator weights from the MaskGAN checkpoint if
    # the weights are compatible.
    if FLAGS.discriminator_model == 'seq2seq_vd':
      dis_variable_maps = variable_mapping.dis_seq2seq_vd(hparams)
      dis_init_saver = tf.train.Saver(var_list=dis_variable_maps)
      init_savers['dis_init_saver'] = dis_init_saver

  return init_savers


def init_fn(init_savers, sess):
  """The init_fn to be passed to the Supervisor.
  Args:
    init_savers:  Dictionary of init_savers.  'init_saver_name': init_saver.
    sess:  tf.Session.
  """
  ## Load Generator weights from MaskGAN checkpoint.
  if FLAGS.maskgan_ckpt:
    print('Restoring Generator from %s.' % FLAGS.maskgan_ckpt)
    tf.logging.info('Restoring Generator from %s.' % FLAGS.maskgan_ckpt)
    print('Asserting Generator is a seq2seq-variant.')
    tf.logging.info('Asserting Generator is a seq2seq-variant.')
    assert FLAGS.generator_model.startswith('seq2seq')
    init_saver = init_savers['init_saver']
    init_saver.restore(sess, FLAGS.maskgan_ckpt)

    ## Load the Discriminator weights from the MaskGAN checkpoint if
    # the weights are compatible.
    print('Restoring Discriminator from %s.' % FLAGS.maskgan_ckpt)
    tf.logging.info('Restoring Discriminator from %s.' % FLAGS.maskgan_ckpt)
    dis_init_saver = init_savers['dis_init_saver']
    dis_init_saver.restore(sess, FLAGS.maskgan_ckpt)

  else:
    return

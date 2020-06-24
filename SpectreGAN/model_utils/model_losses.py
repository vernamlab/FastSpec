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

"""Model loss construction."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

# Dependency imports
import numpy as np
from six.moves import xrange
import tensorflow as tf
from tensorflow.python.ops.weights_broadcast_ops import broadcast_weights
# Useful for REINFORCE baseline.
from losses import losses

FLAGS = tf.app.flags.FLAGS


def create_dis_loss(fake_predictions, real_predictions, targets_present, mask_loss, sequence_length):
  """Compute Discriminator loss across real/fake."""

  missing = tf.cast(targets_present, tf.int32)
  missing = 1 - missing
  missing = tf.cast(missing, tf.bool)

  real_labels = tf.ones([FLAGS.batch_size, FLAGS.sequence_length])
  dis_loss_real = tf.losses.sigmoid_cross_entropy(
      real_labels, real_predictions, weights=missing, reduction='none')
  dis_loss_fake = tf.losses.sigmoid_cross_entropy(
      targets_present, fake_predictions, weights=missing, reduction='none')
  
  dis_loss_real = mask_loss(dis_loss_real)
  dis_loss_fake = mask_loss(dis_loss_fake)
  a = mask_loss(dis_loss_fake)
  real_predictions = mask_loss(real_predictions)
  fake_predictions = mask_loss(fake_predictions)
  real_labels = mask_loss(real_labels)
  print(targets_present)
  #input('targets present')
  targets_present = mask_loss(tf.cast(targets_present, tf.float32))
  
  dis_loss_real =  tf.div_no_nan(tf.reduce_sum(dis_loss_real), _num_present(dis_loss_real, 1.0), name="reduce_diss_loss_real")
  dis_loss_fake =  tf.div_no_nan(tf.reduce_sum(dis_loss_fake), _num_present(dis_loss_fake, 1.0), name="reduce_diss_loss_fake")
   
  dis_loss = (dis_loss_fake + dis_loss_real) / 2.
  real_predictions = tf.nn.relu(tf.sign(real_predictions))
  fake_predictions = tf.nn.relu(tf.sign(fake_predictions))
  sample2 = real_predictions[0,:]
  sample1 = real_labels[0,:]
  real_sum= [] #tf.zeros([1,])
  fake_sum = []
  fake_acc = []
  for b in range(FLAGS.batch_size):

    real_accuracy = tf.metrics.accuracy(real_predictions[b], real_labels[b])
    
    fake_accuracy = tf.metrics.accuracy(fake_predictions[b], targets_present[b])
    fake_acc.append(fake_accuracy)
    t = sequence_length[b]
    real_sum.append(((real_accuracy[0]-1)*tf.cast(FLAGS.sequence_length, tf.float32) + tf.cast(sequence_length[b], tf.float32)) / tf.cast(sequence_length[b], tf.float32))
    fake_sum.append(((fake_accuracy[0]-1)*tf.cast(FLAGS.sequence_length, tf.float32) + tf.cast(sequence_length[b], tf.float32)) / tf.cast(sequence_length[b], tf.float32))
  
  real_s = sum(real_sum)/FLAGS.batch_size
  fake_s = sum(fake_sum)/FLAGS.batch_size

  return dis_loss, dis_loss_fake, dis_loss_real, real_s, fake_s, real_sum, a

def _num_present(losses, weights, per_batch=False):
  """Computes the number of elements in the loss function induced by `weights`.

  A given weights tensor induces different numbers of usable elements in the
  `losses` tensor. The `weights` tensor is broadcast across `losses` for all
  possible dimensions. For example, if `losses` is a tensor of dimension
  `[4, 5, 6, 3]` and `weights` is a tensor of shape `[4, 5]`, then `weights` is,
  in effect, tiled to match the shape of `losses`. Following this effective
  tile, the total number of present elements is the number of non-zero weights.

  Args:
    losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
    weights: `Tensor` of shape `[]`, `[batch_size]` or
      `[batch_size, d1, ... dK]`, where K < N.
    per_batch: Whether to return the number of elements per batch or as a sum
      total.

  Returns:
    The number of present (non-zero) elements in the losses tensor. If
      `per_batch` is `True`, the value is returned as a tensor of size
      `[batch_size]`. Otherwise, a single scalar tensor is returned.
  """
  if (isinstance(weights, float) and weights != 0.0):
    return _num_elements(losses)
  with tf.name_scope(None, "num_present", (losses, weights)) as scope:
    weights = tf.cast(weights, dtype=tf.float32)
    present = tf.where(
        tf.math.equal(weights, 0.0),
        tf.zeros_like(weights),
        tf.ones_like(weights))
    present = broadcast_weights(present, losses)
    if per_batch:
      return tf.math.reduce_sum(
          present,
          axis=tf.range(1, tf.rank(present)),
          keepdims=True,
          name=scope)
    return tf.math.reduce_sum(present, name=scope)

def _num_elements(losses):
  """Computes the number of elements in `losses` tensor."""
  with tf.name_scope(None, "num_elements", values=[losses]) as scope:
    return tf.cast(tf.size(losses, name=scope), dtype=losses.dtype)

def create_critic_loss(cumulative_rewards, estimated_values, present):
  """Compute Critic loss in estimating the value function.  This should be an
  estimate only for the missing elements."""
  missing = tf.cast(present, tf.int32)
  missing = 1 - missing
  missing = tf.cast(missing, tf.bool)

  loss = tf.losses.mean_squared_error(
      labels=cumulative_rewards, predictions=estimated_values, weights=missing)
  return loss


def create_masked_cross_entropy_loss(targets, present, logits):
  """Calculate the cross entropy loss matrices for the masked tokens."""
  cross_entropy_losses = losses.cross_entropy_loss_matrix(targets, logits)

  # Zeros matrix.
  zeros_losses = tf.zeros(
      shape=[FLAGS.batch_size, FLAGS.sequence_length], dtype=tf.float32)

  missing_ce_loss = tf.where(present, zeros_losses, cross_entropy_losses)

  return missing_ce_loss

def cross_entropy_loss(targets, logits):
  """Calculate the cross entropy loss matrices for the masked tokens."""
  cross_entropy_losses = losses.cross_entropy_loss_matrix(targets, logits)

  return cross_entropy_losses


def calculate_reinforce_objective(hparams,
                                  log_probs,
                                  dis_predictions,
                                  present,
                                  estimated_values=None):
  """Calculate the REINFORCE objectives.  The REINFORCE objective should
  only be on the tokens that were missing.  Specifically, the final Generator
  reward should be based on the Discriminator predictions on missing tokens.
  The log probaibilities should be only for missing tokens and the baseline
  should be calculated only on the missing tokens.

  For this model, we optimize the reward is the log of the *conditional*
  probability the Discriminator assigns to the distribution.  Specifically, for
  a Discriminator D which outputs probability of real, given the past context,

    r_t = log D(x_t|x_0,x_1,...x_{t-1})

  And the policy for Generator G is the log-probability of taking action x2
  given the past context.


  Args:
    hparams:  MaskGAN hyperparameters.
    log_probs:  tf.float32 Tensor of log probailities of the tokens selected by
      the Generator.  Shape [batch_size, sequence_length].
    dis_predictions:  tf.float32 Tensor of the predictions from the
      Discriminator.  Shape [batch_size, sequence_length].
    present:  tf.bool Tensor indicating which tokens are present.  Shape
      [batch_size, sequence_length].
    estimated_values:  tf.float32 Tensor of estimated state values of tokens.
      Shape [batch_size, sequence_length]

  Returns:
    final_gen_objective:  Final REINFORCE objective for the sequence.
    rewards:  tf.float32 Tensor of rewards for sequence of shape [batch_size,
      sequence_length]
    advantages: tf.float32 Tensor of advantages for sequence of shape
      [batch_size, sequence_length]
    baselines:  tf.float32 Tensor of baselines for sequence of shape
      [batch_size, sequence_length]
    maintain_averages_op:  ExponentialMovingAverage apply average op to
      maintain the baseline.
  """
  # Final Generator objective.
  final_gen_objective = 0.
  gamma = hparams.rl_discount_rate
  eps = 1e-7

  # Generator rewards are log-probabilities.
  eps = tf.constant(1e-7, tf.float32)
  dis_predictions = tf.nn.sigmoid(dis_predictions)
  rewards = tf.log(dis_predictions + eps)

  # Apply only for missing elements.
  zeros = tf.zeros_like(present, dtype=tf.float32)
  log_probs = tf.where(present, zeros, log_probs)
  rewards = tf.where(present, zeros, rewards)

  # Unstack Tensors into lists.
  rewards_list = tf.unstack(rewards, axis=1)
  log_probs_list = tf.unstack(log_probs, axis=1)
  missing = 1. - tf.cast(present, tf.float32)
  missing_list = tf.unstack(missing, axis=1)

  # Cumulative Discounted Returns.  The true value function V*(s).
  cumulative_rewards = []
  for t in xrange(FLAGS.sequence_length):
    cum_value = tf.zeros(shape=[FLAGS.batch_size])
    for s in xrange(t, FLAGS.sequence_length):
      cum_value += missing_list[s] * np.power(gamma, (s - t)) * rewards_list[s]
    cumulative_rewards.append(cum_value)
  cumulative_rewards = tf.stack(cumulative_rewards, axis=1)


  # Critic loss calculated from the estimated value function \hat{V}(s)
  # versus the true value function V*(s).
  critic_loss = create_critic_loss(cumulative_rewards, estimated_values,
                                    present)

  # Baselines are coming from the critic's estimated state values.
  baselines = tf.unstack(estimated_values, axis=1)

  ## Calculate the Advantages, A(s,a) = Q(s,a) - \hat{V}(s).
  advantages = []
  for t in xrange(FLAGS.sequence_length):
    log_probability = log_probs_list[t]
    cum_advantage = tf.zeros(shape=[FLAGS.batch_size])

    for s in xrange(t, FLAGS.sequence_length):
      cum_advantage += missing_list[s] * np.power(gamma,
                                                  (s - t)) * rewards_list[s]
    cum_advantage -= baselines[t]
    # Clip advantages.
    cum_advantage = tf.clip_by_value(cum_advantage, -FLAGS.advantage_clipping,
                                      FLAGS.advantage_clipping)
    advantages.append(missing_list[t] * cum_advantage)
    final_gen_objective += tf.multiply(
        log_probability, missing_list[t] * tf.stop_gradient(cum_advantage))

  maintain_averages_op = None
  baselines = tf.stack(baselines, axis=1)
  advantages = tf.stack(advantages, axis=1)


  return [
      final_gen_objective, log_probs, rewards, advantages, baselines,
      maintain_averages_op, critic_loss, cumulative_rewards
  ]


def calculate_log_perplexity(logits, targets, present):
  """Calculate the average log perplexity per *missing* token.

  Args:
    logits:  tf.float32 Tensor of the logits of shape [batch_size,
      sequence_length, vocab_size].
    targets:  tf.int32 Tensor of the sequence target of shape [batch_size,
      sequence_length].
    present:  tf.bool Tensor indicating the presence or absence of the token
      of shape [batch_size, sequence_length].

  Returns:
    avg_log_perplexity:  Scalar indicating the average log perplexity per
      missing token in the batch.
  """
  # logits = tf.Print(logits, [logits], message='logits:', summarize=50)
  # targets = tf.Print(targets, [targets], message='targets:', summarize=50)
  eps = 1e-12
  logits = tf.reshape(logits, [-1, FLAGS.vocab_size])

  # Only calculate log-perplexity on missing tokens.
  weights = tf.cast(present, tf.float32)
  weights = 1. - weights
  weights = tf.reshape(weights, [-1])
  num_missing = tf.reduce_sum(weights)

  log_perplexity = tf.contrib.legacy_seq2seq.sequence_loss_by_example(
      [logits], [tf.reshape(targets, [-1])], [weights])

  avg_log_perplexity = tf.reduce_sum(log_perplexity) / (num_missing + eps)
  return avg_log_perplexity

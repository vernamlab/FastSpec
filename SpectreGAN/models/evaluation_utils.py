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

"""Evaluation utilities."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from collections import Counter
# Dependency imports
import numpy as np
from scipy.special import expit

import tensorflow as tf

import helper

FLAGS = tf.app.flags.FLAGS


def print_and_log_losses(log, step, is_present_rate, avg_dis_loss,
                         avg_gen_loss):
  """Prints and logs losses to the log file.

  Args:
    log: GFile for logs.
    step: Global step.
    is_present_rate: Current masking rate.
    avg_dis_loss: List of Discriminator losses.
    avg_gen_loss: List of Generator losses.
  """
  print('global_step: %d' % step)
  print(' is_present_rate: %.3f' % is_present_rate)
  print(' D train loss: %.5f' % np.mean(avg_dis_loss))
  print(' G train loss: %.5f' % np.mean(avg_gen_loss))
  log.write('\nglobal_step: %d\n' % step)
  log.write((' is_present_rate: %.3f\n' % is_present_rate))
  log.write(' D train loss: %.5f\n' % np.mean(avg_dis_loss))
  log.write(' G train loss: %.5f\n' % np.mean(avg_gen_loss))


def print_and_log(log, id_to_word, sequence_eval, max_num_to_print=5):
  """Helper function for printing and logging evaluated sequences."""
  indices_arr = np.asarray(sequence_eval)
  samples = helper.convert_to_human_readable(id_to_word, indices_arr,
                                             max_num_to_print)

  for i, sample in enumerate(samples):
    print('Sample', i, '. ', sample)
    log.write('\nSample ' + str(i) + '. ' + sample)
  log.write('\n')
  print('\n')
  log.flush()
  return samples


def zip_seq_pred_crossent(id_to_word, sequences, predictions, cross_entropy, dis_loss):
  """Zip together the sequences, predictions, cross entropy."""
  indices = np.asarray(sequences)

  batch_of_metrics = []
  print(dis_loss)
  for ind_batch, pred_batch, crossent_batch, loss_batch in zip(indices, predictions,
                                                   cross_entropy, dis_loss):
    metrics = []

    for index, pred, crossent, loss in zip(ind_batch, pred_batch, crossent_batch, loss_batch):
      metrics.append([str(id_to_word[index]), pred, crossent, loss])

    batch_of_metrics.append(metrics)
  return batch_of_metrics


def zip_metrics(indices, *args):
  """Zip together the indices matrices with the provided metrics matrices."""
  batch_of_metrics = []
  for metrics_batch in zip(indices, *args):

    metrics = []
    for m in zip(*metrics_batch):
      metrics.append(m)
    batch_of_metrics.append(metrics)
  return batch_of_metrics


def print_formatted(present, id_to_word, log, batch_of_tuples):
  """Print and log metrics."""
  num_cols = len(batch_of_tuples[0][0])
  repeat_float_format = '{:<12.3f} '
  repeat_str_format = '{:<13}'

  format_str = ''.join(
      ['[{:<1}]  {:<20} {:<20}',
       str(repeat_float_format * (num_cols - 2))])

  header_format_str = ''.join(
      ['[{:<1}]  {:<20} {:<20}',
       str(repeat_str_format * (num_cols - 2))])
  print(num_cols)
  #input('wait')
  header_str = header_format_str.format('p', 'Predicted_Word', 'Real_Word', 'p(real)', 'log-perp',
                                        'log(p(a))', 'r', 'R=V*(s)', 'b=V(s)',
                                        'A(a,s)')

  for i, batch in enumerate(batch_of_tuples):
    print(' Sample: %d' % i)
    log.write(' Sample %d.\n' % i)
    print('  ', header_str)
    log.write('  ' + str(header_str) + '\n')

    for j, t in enumerate(batch):
      t = list(t)
      t[0] = id_to_word[t[0]]
      t[1] = id_to_word[t[1]]

      buffer_str = format_str.format(int(present[i][j]), *t)
      print('  ', buffer_str)
      log.write('  ' + str(buffer_str) + '\n')
  log.flush()


def generate_RL_logs(sess, model, log, id_to_word, feed):
  """Generate complete logs while running with REINFORCE."""
  # Impute Sequences.
  [
      p,
      fake_sequence_eval,
      real_sequence_eval,
      fake_predictions_eval,
      _,
      fake_cross_entropy_losses_eval,
      _,
      fake_log_probs_eval,
      fake_rewards_eval,
      fake_baselines_eval,
      cumulative_rewards_eval,
      fake_advantages_eval,
  ] = sess.run(
      [
          model.present,
          model.fake_sequence,
          model.inputs,
          model.fake_predictions,
          model.real_predictions,
          model.fake_cross_entropy_losses,
          model.fake_logits,
          model.fake_log_probs,
          model.fake_rewards,
          model.fake_baselines,
          model.cumulative_rewards,
          model.fake_advantages,
      ],
      feed_dict=feed)

  indices = np.asarray(fake_sequence_eval)
  real_indices = np.asarray(real_sequence_eval)
  # Convert Discriminator linear layer to probability.
  fake_prob_eval = expit(fake_predictions_eval)

  # Add metrics.
  fake_tuples = zip_metrics(indices,real_indices, fake_prob_eval,
                            fake_cross_entropy_losses_eval, fake_log_probs_eval,
                            fake_rewards_eval, cumulative_rewards_eval,
                            fake_baselines_eval, fake_advantages_eval)

  # real_tuples = zip_metrics(indices, )

  # Print forward sequences.
  tuples_to_print = fake_tuples[:FLAGS.max_num_to_print]
  print_formatted(p, id_to_word, log, tuples_to_print)

  print('Samples')
  log.write('Samples\n')
  samples = print_and_log(log, id_to_word, fake_sequence_eval,
                          FLAGS.max_num_to_print)
  return samples


def generate_logs(sess, model, log, id_to_word, feed):
  """Impute Sequences using the model for a particular feed and send it to
  logs."""
  # Impute Sequences.
  [
      p, sequence_eval, fake_predictions_eval, fake_cross_entropy_losses_eval,
      fake_logits_eval, dis_loss
  ] = sess.run(
      [
          model.present, model.fake_sequence, model.fake_predictions,
          model.fake_cross_entropy_losses, model.fake_logits, model.dis_loss_fak
      ],
      feed_dict=feed)
  
  # Convert Discriminator linear layer to probability.
  fake_prob_eval = expit(fake_predictions_eval)

  # Forward Masked Tuples.
  fake_tuples = zip_seq_pred_crossent(id_to_word, sequence_eval, fake_prob_eval,
                                      fake_cross_entropy_losses_eval, dis_loss)

  tuples_to_print = fake_tuples[:FLAGS.max_num_to_print]

  if FLAGS.print_verbose:
    print('fake_logits_eval')
    print(fake_logits_eval)

  for i, batch in enumerate(tuples_to_print):
    print(' Sample %d.' % i)
    log.write(' Sample %d.\n' % i)
    for j, pred in enumerate(batch):
      buffer_str = ('[{:<1}]  {:<20} {:<20}  {:<7.3f} {:<7.3f} {:<7.3f}').format(
          int(p[i][j]), pred[0], pred[1], pred[2], pred[3], pred[3])
      print('  ', buffer_str)
      log.write('  ' + str(buffer_str) + '\n')
  log.flush()

  print('Samples')
  log.write('Samples\n')
  samples = print_and_log(log, id_to_word, sequence_eval,
                          FLAGS.max_num_to_print)
  return samples


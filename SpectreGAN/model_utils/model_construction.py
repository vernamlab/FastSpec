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

"""Model construction."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

# Dependency imports

import tensorflow as tf
from models import critic_vd
from models import seq2seq_vd
FLAGS = tf.app.flags.FLAGS


# TODO(adai): IMDB labels placeholder to model.
def create_generator(hparams,
                     inputs,
                     sequence_length,
                     targets,
                     present,
                     is_training,
                     is_validating,
                     reuse=None):
  """Create the Generator model specified by the FLAGS and hparams.

  Args;
    hparams:  Hyperparameters for the MaskGAN.
    inputs:  tf.int32 Tensor of the sequence input of shape [batch_size,
      sequence_length].
    present:  tf.bool Tensor indicating the presence or absence of the token
      of shape [batch_size, sequence_length].
    is_training:  Whether the model is training.
    is_validating:  Whether the model is being run in validation mode for
      calculating the perplexity.
    reuse (Optional):  Whether to reuse the model.

  Returns:
    Tuple of the (sequence, logits, log_probs) of the Generator.   Sequence
      and logits have shape [batch_size, sequence_length, vocab_size].  The
      log_probs will have shape [batch_size, sequence_length].  Log_probs
      corresponds to the log probability of selecting the words.
  """
  
  (sequence, logits, log_probs, initial_state, final_state,
    encoder_states) = seq2seq_vd.generator(
        hparams,
        inputs,
        sequence_length,
        targets,
        present,
        is_training=is_training,
        is_validating=is_validating,
        reuse=reuse)
  return (sequence, logits, log_probs, initial_state, final_state,
          encoder_states)


def create_discriminator(hparams,
                         sequence,
                         sequence_length,
                         is_training,
                         reuse=None,
                         initial_state=None,
                         inputs=None,
                         present=None):
  """Create the Discriminator model specified by the FLAGS and hparams.

  Args:
    hparams:  Hyperparameters for the MaskGAN.
    sequence:  tf.int32 Tensor sequence of shape [batch_size, sequence_length]
    is_training:  Whether the model is training.
    reuse (Optional):  Whether to reuse the model.

  Returns:
    predictions:  tf.float32 Tensor of predictions of shape [batch_size,
      sequence_length]
  """
  predictions = seq2seq_vd.discriminator( hparams,
                                          inputs,
                                          sequence_length,
                                          present,
                                          sequence,
                                          is_training=is_training,
                                          reuse=reuse)
  return predictions


def create_critic(hparams, sequence, is_training, sequence_length, reuse=None ):
  """Create the Critic model specified by the FLAGS and hparams.

  Args:
    hparams:  Hyperparameters for the MaskGAN.
    sequence:  tf.int32 Tensor sequence of shape [batch_size, sequence_length]
    is_training:  Whether the model is training.
    reuse (Optional):  Whether to reuse the model.

  Returns:
    values:  tf.float32 Tensor of predictions of shape [batch_size,
      sequence_length]
  """
  if FLAGS.baseline_method == 'critic':
    if FLAGS.discriminator_model == 'seq2seq_vd':
      values = critic_vd.critic_seq2seq_vd_derivative(
          hparams, sequence, is_training, sequence_length, reuse=reuse )
    else:
      raise NotImplementedError
  else:
    raise NotImplementedError
  return values

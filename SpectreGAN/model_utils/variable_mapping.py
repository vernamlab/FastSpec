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

# Dependency imports

import tensorflow as tf

FLAGS = tf.app.flags.FLAGS



def gen_encoder_seq2seq(hparams):
 
  assert hparams.gen_num_layers == 2

  ## Encoder forward variables.
  if not FLAGS.seq2seq_share_embedding:
    encoder_embedding = [
        v for v in tf.trainable_variables()
        if v.op.name == 'gen/encoder/rnn/embedding'
    ][0]
  encoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  encoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]


  model_str = 'model'

  if not FLAGS.seq2seq_share_embedding:
    variable_mapping = {
        str(model_str) + '/embedding':
            encoder_embedding,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
            encoder_lstm_w_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
            encoder_lstm_b_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
            encoder_lstm_w_1,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
            encoder_lstm_b_1
    }
  else:
    variable_mapping = {
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
            encoder_lstm_w_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
            encoder_lstm_b_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
            encoder_lstm_w_1,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
            encoder_lstm_b_1
    }
  return variable_mapping


def gen_decoder_seq2seq(hparams):
  assert hparams.gen_num_layers == 2

  decoder_embedding = [
      v for v in tf.trainable_variables()
      if v.op.name == 'gen/decoder/rnn/embedding'
  ][0]
  decoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  decoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'gen/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]
  decoder_softmax_b = [
      v for v in tf.trainable_variables()
      if v.op.name == 'gen/decoder/rnn/softmax_b'
  ][0]

  if FLAGS.data_set == 'ptb':
    model_str = 'Model'
  else:
    model_str = 'model'

  variable_mapping = {
      str(model_str) + '/embedding':
          decoder_embedding,
      str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
          decoder_lstm_w_0,
      str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
          decoder_lstm_b_0,
      str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
          decoder_lstm_w_1,
      str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
          decoder_lstm_b_1,
      str(model_str) + '/softmax_b':
          decoder_softmax_b
  }
  return variable_mapping


def dis_encoder_seq2seq(hparams):
  """Returns the PTB Variable name to MaskGAN Variable
  dictionary mapping.

  Args:
    hparams:  Hyperparameters for the MaskGAN.

  Returns:
    variable_mapping:  Dictionary with Key: ckpt_name, Value: model_varself.
  """
  assert FLAGS.discriminator_model == 'seq2seq_vd'
  assert hparams.dis_num_layers == 2

  ## Encoder forward variables.
  encoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  encoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]

  if FLAGS.data_set == 'ptb':
    model_str = 'Model'
  else:
    model_str = 'model'

  variable_mapping = {
      str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
          encoder_lstm_w_0,
      str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
          encoder_lstm_b_0,
      str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
          encoder_lstm_w_1,
      str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
          encoder_lstm_b_1
  }
  return variable_mapping


def dis_decoder_seq2seq(hparams):
  assert FLAGS.discriminator_model == 'seq2seq_vd'
  assert hparams.dis_num_layers == 2

  if not FLAGS.dis_share_embedding:
    decoder_embedding = [
        v for v in tf.trainable_variables()
        if v.op.name == 'dis/decoder/rnn/embedding'
    ][0]
  decoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  decoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]

  if FLAGS.data_set == 'ptb':
    model_str = 'Model'
  else:
    model_str = 'model'

  if not FLAGS.dis_share_embedding:
    variable_mapping = {
        str(model_str) + '/embedding':
            decoder_embedding,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
            decoder_lstm_w_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
            decoder_lstm_b_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
            decoder_lstm_w_1,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
            decoder_lstm_b_1
    }
  else:
    variable_mapping = {
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
            decoder_lstm_w_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
            decoder_lstm_b_0,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
            decoder_lstm_w_1,
        str(model_str) + '/RNN/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
            decoder_lstm_b_1,
    }
  return variable_mapping


def dis_seq2seq_vd(hparams):
  assert FLAGS.discriminator_model == 'seq2seq_vd'
  assert hparams.dis_num_layers == 2

  if not FLAGS.dis_share_embedding:
    decoder_embedding = [
        v for v in tf.trainable_variables()
        if v.op.name == 'dis/decoder/rnn/embedding'
    ][0]

  [print(v) for v in tf.trainable_variables()]
  #input('variable_mapping')
  ## Encoder variables.
  encoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  encoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  encoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/encoder/rnn/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]

  ## Attention.
  if FLAGS.attention_option is not None:
    decoder_attention_keys = [
        v for v in tf.trainable_variables()
        if v.op.name == 'dis/decoder/attention_keys/weights'
    ][0]
    decoder_attention_construct_weights = [
        v for v in tf.trainable_variables()
        if v.op.name == 'dis/decoder/rnn/attention_construct/weights'
    ][0]

  ## Decoder.
  decoder_lstm_w_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_0 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias'
  ][0]
  decoder_lstm_w_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel'
  ][0]
  decoder_lstm_b_1 = [
      v for v in tf.trainable_variables() if v.op.name ==
      'dis/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias'
  ][0]

  # Standard variable mappings.
  variable_mapping = {
      'gen/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
          encoder_lstm_w_0,
      'gen/encoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
          encoder_lstm_b_0,
      'gen/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
          encoder_lstm_w_1,
      'gen/encoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
          encoder_lstm_b_1,
      'gen/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel':
          decoder_lstm_w_0,
      'gen/decoder/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias':
          decoder_lstm_b_0,
      'gen/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel':
          decoder_lstm_w_1,
      'gen/decoder/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias':
          decoder_lstm_b_1
  }

  # Optional variable mappings.
  if not FLAGS.dis_share_embedding:
    variable_mapping['gen/decoder/rnn/embedding'] = decoder_embedding
  if FLAGS.attention_option is not None:
    variable_mapping[
        'gen/decoder/attention_keys/weights'] = decoder_attention_keys
    variable_mapping[
        'gen/decoder/rnn/attention_construct/weights'] = decoder_attention_construct_weights

  return variable_mapping

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import collections
import os
# Dependency imports
import numpy as np
import json
import tensorflow as tf

EOS_INDEX = 0

def build_vocab():

  with open('~/FastSpec/dataset/word_dict.txt', 'r') as f:
    vocab = json.load(f)
  return vocab

def spec_raw_data(data_path=None):
  train_path = '~/FastSpec/dataset/train_spec.txt'
  valid_path = '~/FastSpec/dataset/valid_spec.txt'

  if os.path.exists(train_path) and os.path.exists(valid_path):
    with open(train_path, 'r') as f:
      train_data = json.load(f)
    with open(valid_path, 'r') as f:
      valid_data = json.load(f)
      print(len(train_data), 'train len')
      print(len(valid_data), 'valid len')
    return train_data, valid_data

  else: 
    with open(data_path, 'r') as f:
      data = json.load(f)
    
    shuffle_indices = np.random.permutation(np.arange(len(data)))
    data = np.array(data)[shuffle_indices]
    train_len = int(round(len(data)*0.7))
    print(train_len, 'train len')
    train_data = data[:train_len]
    valid_data = data[train_len:]

    with open('~/FastSpec/dataset/train_spec.txt', 'w') as f:
      json.dump(train_data.tolist(), f)
    with open('~/FastSpec/dataset/test_spec.txt', 'w') as f:
      json.dump(valid_data.tolist(), f)

    return train_data, valid_data

def spec_iterator(raw_data, batch_size, num_steps, epoch_size_override=None):
  def get_len(batch):
    lengths = []
    for x in batch:
      unique, counts = np.unique(x, return_counts=True)
      if 0 in dict(zip(unique,counts)):
        lengths.append(num_steps - dict(zip(unique,counts))[0])
      else:
        lengths.append(num_steps)
    return lengths

  epoch_size=raw_data.shape[0]//batch_size
  raw_data = raw_data[:epoch_size*batch_size]
  if epoch_size == 0:
    raise ValueError("epoch_size == 0, decrease batch_size or num_steps")

  for i in range(epoch_size):
    x = raw_data[i * batch_size:(i + 1) * batch_size]
    len_x = get_len(x)
    y = np.roll(x, -1, axis=1)
    len_y = get_len(y)
    w = np.ones_like(x)
    yield (x, len_x, y, len_y, w)
  


if __name__ == "__main__":  
  train_data, valid_data = spec_raw_data('~/FastSpec/dataset/real_data.txt')
  print(len(train_data)+len(valid_data))

    

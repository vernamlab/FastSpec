# FastSpec
Github repository for our paper, [FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings](https://arxiv.org/abs/2006.14147) published in IEEE Euro S&P 2021.



## Folders
### dataset: 
This folder contains the training and test data sets for FastSpec. Each subfolder contains programs in x86 assembly language.

### FastSpec: 
The classifier code and trained model is in this folder.
## Train From Scratch:

#### Build tfrecord files
```
python3 create_pretraining_data.py \
--input_file=~/FastSpec/data/data.txt \
--output_file=~/FastSpec/data/tf_examples.tfrecord \
--vocab_file=~/FastSpec/data/combined_word_dict_format.txt \
--do_lower_case=True \
--max_seq_length=250 \
--max_predictions_per_seq=38 \
--masked_lm_prob=0.15 \
--random_seed=12345 \
--dupe_factor=5
```
#### Pretrain
```
python3 run_pretraining.py \
--input_file=~/FastSpec/data/tf_examples.tfrecord* \
--output_dir=~/FastSpec/data/pretraining \
--do_train=True \
--do_eval=True \
--bert_config_file=~/FastSpec/tmp/bert_small_config.json \
--train_batch_size=128 \
--max_seq_length=50 \
--max_predictions_per_seq=8 \
--num_train_steps=5000000 \
--num_warmup_steps=300000 \
--learning_rate=2e-5
```
#### Pretrain for positional relations
```
python3 run_pretraining.py \
--input_file=~/FastSpec/data/tf_examples.tfrecord* \
--output_dir=~/FastSpec/data/pretraining_pos \
--do_train=True \
--do_eval=True \
--bert_config_file=~/FastSpec/tmp/bert_small_config.json \
--train_batch_size=128 \
--max_seq_length=250 \
--max_predictions_per_seq=38 \
--num_train_steps=5000000 \
--num_warmup_steps=10000 \
--learning_rate=2e-5 \
--init_checkpoint=~/FastSpec/data/pretraining/model.ckpt-XXXXXX
```
#### Train (Fine-tune) the classifier
```
-python3 run_classifier.py \
  "--task_name=assembly" \
  "--do_train=False" \
  "--do_eval=True" \
  "--do_predict=True" \
  "--data_dir=~/FastSpec/data" \
  "--vocab_file=~/FastSpec/data/combined_word_dict_format.txt"  \
  "--bert_config_file=~/FastSpec/tmp/bert_small_config.json" \
  "--init_checkpoint=~/FastSpec/data/pretraining_pos/model.ckpt-YYYYYYY" \
  "--max_seq_length=250" \
  "--train_batch_size=128" \
  "--learning_rate=2e-5" \
  "--num_train_epochs=100 " \
  "--output_dir=~/FastSpec/data/assembly_output"
```

#### Evaluate the classifier
  ```
  python run_classifier.py \
  --task_name=assembly \
  --do_predict=true \
  --data_dir=~/FastSpec/data_classifier \
  --vocab_file=~/FastSpec/data/combined_word_dict_format.txt \
  --bert_config_file=~/FastSpec/tmp/bert_small_config.json \
  --init_checkpoint=~/FastSpec/tmp/assembly_output/model.ckpt-ZZZZZZZ \
  --max_seq_length=250 \
  --output_dir=~/FastSpec/tmp/assembly_output/
  ```
### SpectreGAN: 
Assembly code generator codes are in this folder.

## Requirements: 
TensorFlow >= v1.5

## Having a problem with using the tool?
Open an issue.

## How to cite:
```
@misc{tol2020fastspec,
    title={FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings},
    author={M. Caner Tol and Koray Yurtseven and Berk Gulmezoglu and Berk Sunar},
    year={2020},
    eprint={2006.14147},
    archivePrefix={arXiv},
    primaryClass={cs.CR}
}
```
## Acknowledgments
This work is supported by the National Science Foundation, under grant CNS1814406.

## Watch video clip:
[![](https://raw.githubusercontent.com/vernamlab/FastSpec/master/FastSpec/title.PNG)](http://www.youtube.com/watch?v=Nf0dN7X0RuE "")

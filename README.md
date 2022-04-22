# FastSpec
Github repository for our paper, [FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings](https://arxiv.org/abs/2006.14147). This work will appear in the proceedings of IEEE Euro S&P 2021.


## Spectre dataset: 
This folder contains the training and test data sets for FastSpec. Each subfolder contains programs in x86 assembly language.
```
$ cd dataset
$ sh build.sh
```

## FastSpec: 
The classifier code and trained model is in this folder.
### Scan a file with a trained model:
```
$ cd FastSpec/example
$ sh scan.sh
```
### Train From Scratch:

#### Build tfrecord files
```
$ cd FastSpec
$ python3 create_pretraining_data.py \
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
$ python3 run_pretraining.py \
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
$ python3 run_pretraining.py \
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
$ python3 run_classifier.py \
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
 $ python run_classifier.py \
  --task_name=assembly \
  --do_predict=true \
  --data_dir=~/FastSpec/data_classifier \
  --vocab_file=~/FastSpec/data/combined_word_dict_format.txt \
  --bert_config_file=~/FastSpec/tmp/bert_small_config.json \
  --init_checkpoint=~/FastSpec/tmp/assembly_output/model.ckpt-ZZZZZZZ \
  --max_seq_length=250 \
  --output_dir=~/FastSpec/tmp/assembly_output/
  ```
## SpectreGAN: 
Assembly code generator codes are in this folder.
### Training Steps:
#### Pretraining
```
$ cd SpectreGAN
$ python3 train_mask_gan.py \
 --data_dir='~/FastSpec/SpectreGAN/data/spec_data.txt'' \
 --batch_size=100 \
 --sequence_length=250 \
 --base_directory='~/FastSpec/SpectreGAN/step1' \
 --hparams="gen_rnn_size=64,dis_rnn_size=64,gen_num_layers=2,dis_num_layers=2,gen_learning_rate=0.00074876,dis_learning_rate=5e-4,baseline_decay=0.99,dis_train_iterations=5,gen_learning_rate_decay=0.95" \
 --mode='TRAIN' \
 --max_steps=100000 \
 --generator_model='seq2seq_vd' \
 --discriminator_model='seq2seq_vd' \
 --is_present_rate=0.5 \
 --summaries_every=10 \
 --print_every=250 \
 --max_num_to_print=3 \
 --gen_training_strategy=cross_entropy \
 --baseline_method=critic \
 --attention_option=luong \
 --dis_pretrain_steps=100\
 --gen_pretrain_steps=100
```

#### Adversarial Training
```
$ python3 train_mask_gan.py \
--data_dir='~/FastSpec/SpectreGAN/data/spec_data.txt' \
--batch_size=100 \
--sequence_length=250 \
--base_directory='~/FastSpec/SpectreGAN/step2' \
--mask_strategy=contiguous \
--hparams="gen_rnn_size=64,dis_rnn_size=64,gen_num_layers=2,dis_num_layers=2,gen_learning_rate=0.0005,gen_learning_rate_decay=1.0,gen_full_learning_rate_steps=2000000,gen_vd_keep_prob=0.33971,rl_discount_rate=0.89072,dis_learning_rate=0.005,baseline_decay=0.99,dis_train_iterations=10,dis_pretrain_learning_rate=0.005,critic_learning_rate=5.1761e-7,dis_vd_keep_prob=0.71940" \
--mode='TRAIN' \
--max_steps=100000 \
--generator_model='seq2seq_vd' \
--discriminator_model='seq2seq_vd' \
--is_present_rate=0.50 \
--summaries_every=250 \
--print_every=250 \
--max_num_to_print=3 \
--gen_training_strategy='reinforce' \
--baseline_method=critic \
--attention_option=luong \
--maskgan_ckpt='~/FastSpec/SpectreGAN/step1/train/model.ckpt-XXXXX' \
--advantage_clipping=100.
```
#### Generate New Samples
Note that you need to verify the generated outputs.
```
 $ python3 generate_samples.py \
 --data_dir='~/FastSpec/SpectreGAN/data/spec_data.txt' \
 --data_set= spec \
 --batch_size=100 \
 --sequence_length=250 \
 --base_directory='~/FastSpec/SpectreGAN/step3' \
 --hparams="gen_rnn_size=64,dis_rnn_size=64,gen_num_layers=2,gen_vd_keep_prob=0.33971" \
 --generator_model=seq2seq_vd \
 --discriminator_model=seq2seq_vd \
 --is_present_rate=0.80 \
 --maskgan_ckpt='~/FastSpec/SpectreGAN/step3/train/model.ckpt-XXXXX' \
 --seq2seq_share_embedding=True \
 --dis_share_embedding=True \
 --attention_option=luong \
 --mask_strategy=contiguous \
 --baseline_method=critic \
 --number_epochs=4
```
## Requirements: 
TensorFlow >= v1.5

## Having a problem with using the tool?
Open an issue.

## How to cite:
```
@inproceedings{tol2021fastspec,
  title={FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings},
  author={Tol, M. Caner and Gulmezoglu, Berk and Yurtseven, Koray and Sunar, Berk},
  booktitle={2021 IEEE European Symposium on Security and Privacy (EuroS\&P)},
  pages={616--632},
  year={2021},
  organization={IEEE}
}
```

## Watch the video clip:
[![](https://raw.githubusercontent.com/vernamlab/FastSpec/master/FastSpec/title.PNG)](http://www.youtube.com/watch?v=Nf0dN7X0RuE "")

## Acknowledgments
This work is supported by the National Science Foundation, under grant CNS1814406.

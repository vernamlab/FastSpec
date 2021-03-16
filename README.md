# FastSpec
Github repository for our paper, [FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings](https://arxiv.org/abs/2006.14147) published in IEEE Euro S&P 2021.

## Overview:

Several techniques have been proposed to detect vulnerable Spectre gadgets in widely deployed commercial software. Unfortunately, detection techniques proposed so far rely on hand-written rules which fall short in covering subtle variations of known Spectre gadgets as well as demand a huge amount of time to analyze each conditional branch in software. Since it requires arduous effort to craft new gadgets manually, the evaluations of detection mechanisms are based only on a handful of these gadgets. In this work, we employ deep learning techniques for automated generation and detection of Spectre gadgets. We first create a diverse set of Spectre-V1 gadgets by introducing perturbations to the known gadgets. Using mutational fuzzing, we produce a data set with more than 1 million Spectre-V1 gadgets which is the largest Spectre gadget data set built to date. Next, we conduct the first empirical usability study of Generative Adversarial Networks (GANs) for creating assembly code without any human interaction. We introduce SpectreGAN which leverages masking implementation of GANs for both learning the gadget structures and generating new gadgets. This provides the first scalable solution to extend the variety of Spectre gadgets.

Finally, we propose FastSpec which builds a classifier with the generated Spectre gadgets based on the novel high dimensional Neural Embedding technique BERT. For case studies, we demonstrate that FastSpec discovers potential gadgets in OpenSSL libraries and Phoronix benchmarks. Further, FastSpec offers much greater flexibility and much faster classification compared to what is offered by the existing tools. Therefore FastSpec can be used for gadget detection in large-scale projects.

## Contact
* M. Caner Tol, @canertol mtol@wpi.edu

## Folders
### dataset: 
This folder contains the training and test data sets for FastSpec. Each subfolder contains programs in x86 assembly language.

### FastSpec: 
The classifier code and trained model is in this folder.
## Train From Scratch:

# Build tfrecord files
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
# Pretrain
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
# Pretrain for positional relations

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

# Train (Fine-tune) the classifier

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


# Evaluate the classifier
  
  python run_classifier.py \
  --task_name=assembly \
  --do_predict=true \
  --data_dir=~/FastSpec/data_classifier \
  --vocab_file=~/FastSpec/data/combined_word_dict_format.txt \
  --bert_config_file=~/FastSpec/tmp/bert_small_config.json \
  --init_checkpoint=~/FastSpec/tmp/assembly_output/model.ckpt-ZZZZZZZ \
  --max_seq_length=250 \
  --output_dir=~/FastSpec/tmp/assembly_output/
  
### SpectreGAN: 
Assembly code generator codes are in this folder.

## Requirements: 
TensorFlow >= v1.5

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

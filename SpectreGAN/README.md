
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

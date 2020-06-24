WINDOW=50
OVERLAP=49
mkdir tmp/assembly_output2/window"$WINDOW"_overlap"$OVERLAP"
mkdir tmp/assembly_output2/window"$WINDOW"_overlap"$OVERLAP"_tsv
for filename in $(ls ~/FastSpec/data/openssl_reduced)
  do
    objdump -d binary_files/"$filename" --no-show-raw-insn | perl -p -e $
    rm data_classifier/test.tsv
    rm tmp/assembly_output2/predict.tf_record
    python3 data_classifier/list2tsv.py -p ~/FastSpec/data/openssl_reduced/"$filename" -w "$WINDOW" -o "$OVERLAP"
    cp data_classifier/test.tsv tmp/assembly_output2/window"$WINDOW"_overlap"$OVERLAP"_tsv/"$filename".tsv
    
    python3 run_classifier.py \
    --task_name=assembly \
    --do_predict=true \
    --data_dir=~/FastSpec/data_classifier \
    --vocab_file=~/FastSpec/combined_reduced_vocab_format.v5.txt \
    --bert_config_file=~/FastSpec/tmp/bert_small_config_old.json \
    --init_checkpoint=~/FastSpec/tmp/fastspec.v1/assembly_output/model.ckpt-3000 \
    --max_seq_length=250 \
    --output_dir=~/FastSpec/tmp/assembly_output2

    mv tmp/assembly_output2/test_results.tsv tmp/assembly_output2/window"$WINDOW"_overlap"$OVERLAP"/"$filename".tsv
    echo "${filename##*/}" >> time_measured.txt
    date +"%T" >> time_measured.txt
  done
python3 confidence_plot.py -p ~/FastSpec/tmp/assembly_output2/window"$WINDOW"_overlap"$OVERLAP"


WINDOW=50
OVERLAP=49
mkdir output
mkdir output/window"$WINDOW"_overlap"$OVERLAP"
mkdir output/window"$WINDOW"_overlap"$OVERLAP"_tsv

for filename in $(ls libcrypto-lib-ex_data.o)
  do
    objdump -d "$filename" --no-show-raw-insn | perl -p -e 's/^\s+(\S+):\t//;'>> "$filename".s
    python3 asm_parser.py -f "$filename".s -v combined_reduced_vocab.v5.txt 
    #rm data_classifier/test.tsv
    #rm tmp/assembly_output2/predict.tf_record
    python3 list2tsv.py -p "$filename".s_test_reduced.txt -w "$WINDOW" -o "$OVERLAP"
    cp test.tsv output/window"$WINDOW"_overlap"$OVERLAP"_tsv/"$filename".tsv
    
    python3 ../run_classifier.py \
    --task_name=assembly \
    --do_predict=true \
    --data_dir= ./ \
    --vocab_file=combined_reduced_vocab_format.v5.txt \
    --bert_config_file=bert_small_config_old.json \
    --init_checkpoint=model.ckpt-3000 \
    --max_seq_length=256 \
    --output_dir=./output
    mv output/test_results.tsv output/window"$WINDOW"_overlap"$OVERLAP"/"$filename".tsv
  done
python3 ../confidence_plot.py -p output/window"$WINDOW"_overlap"$OVERLAP"


import csv, json, os, argparse

def list2tsv(data_path,window=20,overlap=5):
    offset = window - overlap
    with open(data_path,'r') as f: #sources.txt','r') as f:  #benign_reduced_test_dataset.txt','r') as f: #combined_reduced.v5.txt','r') as f:
        data = json.load(f)
    counter = 0
    with open('/home/caner/tmp/bert/data/train_250.tsv', 'wt') as out_file:
        tsv_writer = csv.writer(out_file, delimiter='\t')
        #for k in data[:1017183]:
        #    tsv_writer.writerow(['1', ' '.join(k)])
        for idx,k in enumerate(data[:]):
            #print(len(data))
            for i in range(len(k)//offset+1):
                if i == (len(k))//offset:
                    if len(k[offset*i:])>10:
                        if idx<956096:
                            tsv_writer.writerow(['1', ' '.join(k[offset*i:])])
                            print(1)
                        else:
                            tsv_writer.writerow(['0', ' '.join(k[offset*i:])])    
                            print(0)
                        #counter = counter + 1
                else:
                    if idx<956096:
                        tsv_writer.writerow(['1', ' '.join(k[offset*i:offset*i+window])])
                        print(1)
                    else:
                        tsv_writer.writerow(['0', ' '.join(k[offset*i:offset*i+window])])
                        print(0)
                    #counter = counter + 1
                
    #print(counter)

if __name__ == "__main__":
    #parser = argparse.ArgumentParser()
    #parser.add_argument("-p",'--path', help="enter the file path")
    #parser.add_argument("-w",'--window', help="enter the window size")
    #parser.add_argument("-o",'--overlap', help="enter the window size")
    #args = parser.parse_args()
    #list2tsv(args.path, int(args.window), int(args.overlap))
    #list2tsv('/home/caner/tmp/bert/data_classifier/batches_parsed_test.txt') #phoronix_parsed/Stream-spec_test.txt',20,19)
    list2tsv('/home/caner/tmp/bert/data/combined_train_reduced.txt',50,25)
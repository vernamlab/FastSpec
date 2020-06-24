import csv, json, os, argparse
numSpec=956096 # Number of spectre functions in training data
def list2tsv(data_path,window=20,overlap=5):
    offset = window - overlap
    with open(data_path,'r') as f:
        data = json.load(f)
    counter = 0
    with open('~/FastSpec/dataset/train.tsv', 'wt') as out_file:
        tsv_writer = csv.writer(out_file, delimiter='\t')
        for idx,k in enumerate(data[:]):
            for i in range(len(k)//offset+1):
                if i == (len(k))//offset:
                    if len(k[offset*i:])>10:
                        if idx<numSpec:
                            tsv_writer.writerow(['1', ' '.join(k[offset*i:])])
                        else:
                            tsv_writer.writerow(['0', ' '.join(k[offset*i:])])    
                else:
                    if idx<numSpec:
                        tsv_writer.writerow(['1', ' '.join(k[offset*i:offset*i+window])])
                    else:
                        tsv_writer.writerow(['0', ' '.join(k[offset*i:offset*i+window])])

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-p",'--path', help="enter the file path")
    parser.add_argument("-w",'--window', help="enter the window size")
    parser.add_argument("-o",'--overlap', help="enter the window size")
    args = parser.parse_args()
    list2tsv(args.path, int(args.window), int(args.overlap))

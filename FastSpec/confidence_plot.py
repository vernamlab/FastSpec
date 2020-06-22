import csv, os, argparse
from matplotlib import pyplot as plt
import numpy as np
import matplotlib
matplotlib.rcParams.update({'font.size': 22})

def confidence_plot(data_path):
    files = os.listdir(data_path)
    if not os.path.exists(data_path+'_fig'):
        os.mkdir(data_path+'_fig')
    for fl in files:
        with open(os.path.join(data_path,fl), "r") as f:
            reader = csv.reader(f, delimiter="\t")
            lines = []
            #counter = 0
            for line in reader:
                lines.append(float(line[1]))
            lines=np.array(lines)
            n = [k for k in range(len(lines))]
            #lines_lower= np.ma.masked_inside(lines,750,1000)
            #lines_upper= np.ma.masked_outside(lines,100,200)
            x1 = 865
            x2 = 1000
            #plt.plot(n[:x1+1],lines[:x1+1],n[x2:],lines[x2:],'C0',label=fl)
            #plt.plot(,label=fl)
            #plt.plot(n[x1:x2],lines[x1:x2],'C3',label=fl)
            plt.ylabel('Confidence')
            plt.xlabel('Window')
            plt.plot(lines,color='C0',label=fl)
            plt.gcf()
            plt.ylim(-0.1,1.1)
            #plt.xlim(0,2500)
            #plt.legend()        
            plt.savefig(os.path.join(data_path+'_fig',fl)+'.png')        
            plt.clf()
            '''
            top=0.954,
            bottom=0.11,
            left=0.111,
            right=0.937,
            hspace=0.2,
            wspace=0.2
            '''
    

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-p",'--path', help="enter the file path")
    args = parser.parse_args()
    confidence_plot(args.path)
    #confidence_plot('/home/caner/tmp/bert/tmp/assembly_output/window50_overlap49/fstime-spec.txt.tsv')
    #confidence_plot('/home/caner/tmp/bert/tmp/assembly_output/window50_overlap49/fstime_test.txt.tsv')

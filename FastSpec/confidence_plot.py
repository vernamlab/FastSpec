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
            for line in reader:
                lines.append(float(line[1]))
            lines=np.array(lines)
            plt.ylabel('Confidence')
            plt.xlabel('Window')
            plt.plot(lines,color='C0',label=fl)
            plt.gcf()
            plt.ylim(-0.1,1.1)     
            plt.savefig(os.path.join(data_path+'_fig',fl)+'.png')        
            plt.clf()

    

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-p",'--path', help="enter the file path")
    args = parser.parse_args()
    confidence_plot(args.path)
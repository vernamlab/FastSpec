import os,json
import collections
import threading
import time
import argparse
from reducer import reduce_dataset

def split(word): 
    return [char for char in word] 

def thread_parser(index,filepath):
    print('Parsing Dataset')
    data = []
    victimfile = os.path.join(filepath)
    function = []
    with open(victimfile, 'r') as f:
        print(victimfile)
        for row in f:
            if 'Disassembly' in row:
                continue
            row = row.replace('\n','')
            row = row.rstrip()
            row = row.replace('        ','\t')
            row = row.replace('       ','\t')
            row = row.replace('      ','\t')
            row = row.replace('     ','\t')
            row = row.replace('    ','\t')
            row = row.replace('   ','\t')
            row = row.replace('  ','\t')
            if '<' in row:
                row = row.replace(' ','')
            else:
                row = row.replace(' ','\t')
            inst=[]
            if True: 
                    inst.append(row.split('\t')[0].replace('\n','').replace('\t','').replace('\\','').split('#',1)[0]) 
                    inst[0] = inst[0].lower()
                    if len(row.split('\t'))>1:
                        if row.split('\t')[1].count(',')>1 and '(' in row.split('\t')[1] : 
                            operand=row.split('\t')[0].replace('\n','').replace(' ','')
                            charIndex={'(': [-1,0], 
                                    ')': [-1,0],
                                    ',': [-1,0],
                                    ':': [-1 ,0]}                       
                            for i,char in enumerate(split(operand)): 
                                if char in charIndex:
                                    charIndex[char][1] +=1
                                    if charIndex[char][0]<0:
                                        charIndex[char][0] = i
                            if charIndex['('][0]<charIndex[','][0]:
                                operand=operand.split(',')
                                counter =0
                                for k in range(len(operand)) :
                                    if k!=0:
                                        operand.insert(k+counter, ',') 
                                        counter+=1
                                oper=[]
                                counter = 0
                                for op in range(len(operand)):
                                    if '(' in operand[op]:
                                        oper.append(operand[op].split('(')[1])
                                        oper.insert(counter+op,'(')
                                        counter+=1
                                    elif ')' in operand[op]:
                                        oper.append(operand[op].split(')')[0])
                                        oper.insert(counter+op+1, ')')
                                        counter+=1
                                    else:
                                        oper.append(operand[op])
                                if not '#' in oper and not '"' in oper: 
                                    inst.extend(oper)
                                for o,op in enumerate(inst):
                                    if op == '': 
                                        inst.pop(o)
                                function.extend(inst)
                                continue
                        else:    
                            inst.append(row.split('\t')[1].split(',')[0].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 1 if exists
                            if len(row.split('\t')[1].split(','))>1: 
                                if len(row.split('\t'))>2:
                                    inst.append(row.split('\t')[2].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 2 if exists
                                else:       
                                    inst.append(row.split('\t')[1].split(',')[1].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 3 if exists

                    inst[0] = inst[0].lower()
                    for o,op in enumerate(inst):
                        if op == '' and o == 0: 
                            inst = None
                            break
                        elif op == '':
                            inst = row.split('\t')
                            for o,op in enumerate(inst):
                                if op == '':
                                    inst.pop(o)
                            break        
                    if inst is not None:
                        
                        if len(inst)>2 and not '#' in inst[2]:
                            inst.insert(2,',')
                            if len(inst)>4:
                                inst.insert(4,',')  
                        oper=[]
                        counter = 0
                        for op in range(len(inst)):
                            if '(' in inst[op]:
                                oper.append(inst[op].split('(')[0])
                                oper.insert(counter+op+1,'(')
                                counter+=1
                                if ')' in inst[op]:
                                    oper.append(inst[op].split('(')[1].split(')')[0])
                                    oper.insert(counter+op+2, ')')
                                    counter+=1
                                if '),' in inst[op]:
                                    oper.append(',')
                                    oper.append(inst[op].split(',')[1])
                            elif ':' in inst[op] and '%' in inst[op]:
                                oper.append(inst[op].split(':')[0])
                                oper.append(':')
                                oper.append(inst[op].split(':')[1])
                            else:
                                oper.append(inst[op])
                            
                        oper = list(filter(None, oper))
                        if not '#' in oper and not '"' in oper: 
                            function.extend(oper)
            elif not '#' in row and not '"' in row: 
                function.append(row)
        function = replace_labels(function)
        data.append(function[2:])
    return data        

def parse_dataset(filepath):
    data = thread_parser('1',filepath)
    return data
  
def replace_labels(function):

    label_dict = dict()
    label=0
    temp = []
    for i,inst in enumerate(function):
        if '<' in inst and not '#' in inst:
            if ':' in inst:
                label=1
                inst = inst.replace(':','')
            if inst in label_dict:
                function[i]='.L' + str(label_dict[inst])
            else: 
                label_dict[inst]=len(label_dict)
                function[i]='.L' + str(label_dict[inst])
            if label:
                function[i]=function[i] + ':'
                label = 0
        elif not '000000' in inst and not '#' in inst and not '/' in inst:
            temp.append(inst)

    return temp

    # Build dictionary of words
def build_dictionary(data, vocabulary_size=None):
    print('Building Dictionary')
    words = []
    for func in data:
        words.extend(func)
    count = []
    count.extend(collections.Counter(words).most_common(vocabulary_size))
    word_dict = {}
    for word,_ in count:
        word_dict[word] = len(word_dict) 
    return(word_dict)
if __name__ == "__main__":

    def parse(file):
        func_data =[]
        func_data= parse_dataset('~/FastSpec/asm/'+file)
        data_reduced = reduce_dataset(func_data)    
        filew = '~/FastSpec/asm/'+file+'_test_reduced.txt'
        with open(filew, 'w') as f:
            json.dump(data_reduced, f)   
        
    #start = time.time()
    for f in os.listdir('~/FastSpec/asm'):
        parse(f)
    #end = time.time()
    #print(end-start,'seconds')
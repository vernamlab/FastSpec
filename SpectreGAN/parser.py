import os,json
import collections
import threading
import time
#filew = os.path.join('/home/ubuntu/caner/SPECTRE.txt')
dict_replace = { '': 116, '""': 121, '"clangversion6.0.1-svn334776-1~exp1~20190309042730.123': 192, 'branches/release_60': 193, '".note.GNU-stack"': 194, 
                ' # 8-byte Spill': 211,  '.file "victim7.c"': 239,  '# pad': 245, ' # 8-byte Reload': 265, '.file "victim15.c"': 272,  'JMP': 278, '.file "05-no-unsigned.c"': 282,
                 'victim_function_v11': 295, '"victim14.c"': 301, '"17.c"': 302, 'victim_function_v17': 303, '"victim8.c"': 310, 'JMPQ': 314, 
                '"victim12.c"': 318, '"victim5.c"': 320, '"victim15.c"': 323, '.file "victim9.c"': 324,  '"11sub.c"': 331, '"02.c"': 332,'.file "11ker.c"': 335, 
                '.file "02.c"': 337,  '"13.c"': 355,'"11ker.c"': 357, '"11gcc.c"': 358, '  # @array3': 360, '"16.c"': 361, 'victim_function_v16': 362, '"20.c"': 363, '"08.c"': 364,
                'victim_function_v08': 365, '  # 1-byte Spill': 368, ' # 1-byte Spill': 370, '  # 1-byte Reload': 372, '"12.c"': 373, 'victim_function_v12': 374,
                '"03.c"': 375, 'victim_function_v03': 376, '# imm = 0xFFFFFFFF': 378, 'victim_function_v20': 379, '"01.c"': 380, 
                }

def split(word): 
    return [char for char in word] 

def thread_parser(index,filepath):
    print('Parsing Dataset')
    cmax=0
    data = []
    #filew = os.path.join('/home/caner/gandalf/dataset','newSpec'+index+'.txt')
    victims = os.listdir(filepath)
    victims.sort() # Victims are alphabetically sorted.
    for idx in range(len(victims)):
        v = victims[idx]
        victimfile = os.path.join(filepath,v)
        function = []     
        if not 'sample' in v:    
            with open(victimfile, 'r') as f:
            #capture = 0
                for row in f:
                    row = row.replace('\n','')
                    row = row.rstrip()
                    row = row.replace('        ','\t')
                    row = row.replace('       ','\t')
                    row = row.replace('      ','\t')
                    row = row.replace('     ','\t')
                    row = row.replace('    ','\t')
                    row = row.replace('   ','\t')

                    inst=[]
                    if len(row.split('\t'))>1 : 
                        #if split(row.split('\t')[1])[0]!='' : #and split(row.split('\t')[1])[0]!='.'  :
                            inst.append(row.split('\t')[1].replace('\n','').replace('\t','').replace('\\','').split('#',1)[0]) # opcode
                            inst[0] = inst[0].lower()
                            if len(row.split('\t'))>2:
                                if row.split('\t')[2].count(',')>1 and '(' in row.split('\t')[2] : #and '' in re.split(r'[()]',row.split('\t')[2].split()[1]):
                                    operand=row.split('\t')[2].replace('\n','').replace(' ','')
                                    charIndex={'(': [-1,0], # [first appearance, count]
                                            ')': [-1,0],
                                            ',': [-1,0],
                                            ':': [-1 ,0]}                       
                                    for i,char in enumerate(split(operand)): # hold the indices of (),:
                                        if char in charIndex:
                                            charIndex[char][1] +=1
                                            if charIndex[char][0]<0:
                                                charIndex[char][0] = i
                                    #t=re.split(r'[()]',row.split('\t')[2].split()[1])
                                    #t=list(filter(None, t))
                                    if charIndex['('][0]<charIndex[','][0]:
                                        #operand=operand.replace(',',' ',charIndex[','][1]-1)
                                        operand=operand.split(',')
                                        counter =0
                                        for k in range(len(operand)) :
                                            if k!=0:
                                                operand.insert(k+counter, ',') 
                                                counter+=1
                                        oper=[]
                                        counter = 0
                                        for op in range(len(operand)):
                                            if '(' in operand[op]:# and not '#' in operand[op] and not '"' in operand[op]:
                                                oper.append(operand[op].split('(')[1])
                                                oper.insert(counter+op,'(')
                                                counter+=1
                                            elif ')' in operand[op]:# and not '#' in operand[op] and not '"' in operand[op]:
                                                oper.append(operand[op].split(')')[0])
                                                oper.insert(counter+op+1, ')')
                                                counter+=1
                                            else:#if not '#' in operand[op] and not '"' in operand[op]: 
                                                oper.append(operand[op])
                                        #if not ')' in operand[0]:
                                        #    operand[0]+=operand[1]
                                        #    del operand[1]

                                        if not '#' in oper and not '"' in oper: 
                                            inst.extend(oper)
                                        for o,op in enumerate(inst):
                                            if op == '': 
                                                inst.pop(o)
                                        #function.append('<start>')        
                                        function.extend(inst)
                                        #function.append('<end>')
                                        continue
                                else:    
                                    inst.append(row.split('\t')[2].split(',')[0].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 1 if exists
                                    if len(row.split('\t')[2].split(','))>1: 
                                        if len(row.split('\t'))>3:
                                            inst.append(row.split('\t')[3].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 2 if exists
                                        else:       
                                            inst.append(row.split('\t')[2].split(',')[1].replace('\n','').replace('\t','').replace('\\','').replace(' ','').split('#',1)[0]) # operand 3 if exists

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
                                
                                if len(inst)>2:
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
                                    else:
                                        oper.append(inst[op])
                                oper = list(filter(None, oper))
                                if not '#' in oper and not '"' in oper: 
                                    function.extend(oper)
                    elif not '#' in row and not '"' in row: 
                        function.append(row)
                #data.append('<start>') 
                #while(len(function)<376):
                #function.append('<end>')
                function = replace_labels(function)
                for item in dict_replace:
                    if 'JMP' in item and item in function:
                        for i,k in enumerate(function):
                            if k == item:
                                function[i]= item.lower()
                                #print(item,'lowered')
                    else:
                        temp = [x for x in function if x != item]
                        #print(item,'removed')
                        function = temp[:]

                data.append(function)
                #if len(function)>cmax:
                #    cmax = len(function)
                #    print cmax
        else:
            with open(victimfile, 'r') as f:
              
              for row in f:
                  
                  row = row.replace('\t','').replace('\n','').replace('  ',' ')
                  
                  function.extend(row.split(' ')) 
                  
            data.append(function)        
    #print cmax
    return data        

'''
    with open(filew, 'w') as f:
        json.dump(data,f)
    print('thread {} finished!'.format(index))
'''
def parse_dataset(file_path):
    start = time.time()
    #filepath = os.path.join('/home/caner/gandalf/dataset/dataset.v5.1')
    data = thread_parser('1',file_path)
    end = time.time()
    print('parsing time is {} minutes'.format((end-start)/60))
    return data
    '''
    threads = list()
    for index in range(1,2):

        x = threading.Thread(target=thread_parser, args=(str(index)))
        threads.append(x)
        print('thread {} started'.format(index))
        x.start()
    
    for index, thread in enumerate(threads):
        thread.join()
    '''
def replace_labels(function):
    label_dict = dict()
    label=0
    for i,inst in enumerate(function):
        if '.L' in inst:
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
    return function

def text_to_numbers(functions, word_dict):
    print('Replacing ops with their indices')
    # Initialize the returned data
    data = []
    temp = []
    for func in functions:
        for word in func:
            if word in word_dict:
                word_ix = word_dict[word]
            else:
                word_ix = 0
            temp.append(word_ix)
        data.append(temp)
        temp = []
    return(data)
    # Build dictionary of words
def build_dictionary(data, vocabulary_size=None):
    print('Building Dictionary')
    words = []
    for func in data:
        words.extend(func)
    # Initialize list of [word, word_count] for each word, starting with unknown
    count = []#['RARE', -1]]
    # Now add most frequent words, limited to the N-most frequent (N=vocabulary size)
    count.extend(collections.Counter(words).most_common(vocabulary_size))
    # Now create the dictionary
    word_dict = {}
    # For each word, that we want in the dictionary, add it, then make it
    # the value of the prior dictionary length
    for word,_ in count:
        word_dict[word] = len(word_dict) 
    return(word_dict)
if __name__ == "__main__":
    def parse(file):
        #func_data =  parse_dataset('/home/caner/tmp/bert/data/benign_test')
        #filew = '/home/caner/tmp/bert/data/'+file+'_test_parsed.txt'
        #with open(filew, 'w') as f:
        #    json.dump(func_data, f) 
        with open('/home/caner/tmp/bert/data/benign_test_parsed.txt') as f:  #dataset/padded_dataset.v5.txt','r') as f:
            func_data = json.load(f)
        
        #word_dict = build_dictionary(func_data)
        #with open('/home/caner/tmp/bert/data/combined_word_dict.txt','r') as f:
        #    word_dict = json.load(f)
            
        from reducer import reduce_dataset

        data_reduced = reduce_dataset(func_data)
        #word_dict = build_dictionary(data_reduced)
        #filew = '/home/caner/tmp/bert/data/'+file+'_test_word_dict.txt'
        #with open(filew, 'w') as f:
        #    json.dump(word_dict, f) 
        #print(word_dict)
        #data = text_to_numbers(func_data, word_dict)
        #input('Press enter to exit.')
        #filew = os.path.join('/home/caner/gandalf/dataset','real_dataset_indices.v5.txt')
        filew = '/home/caner/tmp/bert/data/'+file+'_test_reduced.txt'
        with open(filew, 'w') as f:
            json.dump(data_reduced, f)   
        #print(word_dict)
        #data = text_to_numbers(func_data, word_dict)
        #input('Press enter to exit.')
        #filew = os.path.join('/home/caner/gandalf/dataset.v5.1.txt')

        #with open(filew, 'w') as f:
        #    json.dump(func_data, f)
        
        #from padder import padder
        #padder()
        #with open('/home/caner/gandalf/dataset/dataset_padded.v5.1.txt','r') as f:
        #    padded_data = json.load(f)
        #data=text_to_numbers(padded_data, word_dict)
        #with open('/home/caner/gandalf/dataset/dataset_indices.v5.1.txt', 'w') as f:
        #    json.dump(data, f)

        #print(func_data)
    parse('benign')
    
    #parse('arith')
    #parse('cachebench')
    #parse('Clomp')
    #parse('context1')
    #parse('Crafty')
    #parse('C-ray')
    #parse('dhry_1')
    #parse('Ebizzy')
    #parse('execl')
    #parse('fstime')
    #parse('hanoi')
    #parse('looper')
    #parse('Mbw')
    #parse('M-queens')
    #parse('pipe')
    #parse('Postmark')
    #parse('Stream')
    #parse('TioTest')
    #parse('Tscp')
    #parse('XsBench')
#
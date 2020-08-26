import json,os
#from asm_parser import build_dictionary
def split(word): 
    return [char for char in word] 
immediate = ["7","5","3", "0"," 16","-60","-64","-49"," -49","-32","-4", "-1", "10","8", "-9",  "-44","-20", "1", " -32", " -24", 'nusers', '1075052544' ,'8192','136','30','52','46','576','400','1084227584'
            ,'12', ' -16', ' -40', '20', ' -48', ' -56', '41','536','36','44','48','512','56','40','72','-48','-12','16','32','24','28','stderr','child','exit_status']

def reduce_dataset(functions, word_dict=None):
    print('Reducing Dataset')   
    temp_func = []
    flag = 0
    for f,func in enumerate(functions):
        temp=[]
        for o, op in enumerate(func):
            if ',' in op and op !=',':
                op = op.split(',')
                op.insert(1,',')
                temp.extend(op)
                continue
            elif '..' in op or '[[' in op or 'uu' in op or '33' in op:
                continue
            elif '+' in op:
                op = op.split('+')
                temp.extend(op)
                continue
            elif '%' in op and not op[0]=='%':
                op = op.split('%')
                op[1] = '%'+op[1]
                temp.extend(op)
                continue

            temp.append(op)
        temp_func.append(temp)
        
    temp_f=[]
             
    # Simplify Memory operations, Labels and Immediates
    for f,func in enumerate(temp_func):
        for o, op in enumerate(func):
            if '.L' in op or 'mymemcmp' in op or 'is_x_safe' in op or 'call' in func[o-1] or 'getwork' in op: 
                func[o] = '<label>'
            elif '$' in op or '0x' in op or op in immediate:
                func[o] = '<imm>'
            elif '..' in op or '[[' in op or 'uu' in op or '33' in op or '\\' in op or '\"' in op or not op in word_dict:
                 func[o] = '<UNK>'
        temp_f.append(func)
    temp_func = []
    for f,func in enumerate(temp_f):
        temp=[]
        for o, op in enumerate(func):
            if '.' in op:
                continue
            temp.append(op)
        temp_func.append(temp)
                
                    
    return temp_func


if __name__=='__main__':
    filer = '~/FastSpec/dataset/dataset_parsed.txt'
    filew = '~/FastSpec/dataset/dataset_reduced.txt'
    vocab = '~/FastSpec/dataset/word_dict.txt'
    print('benign data loading')
    with open(filer, 'r') as f:
        func_data = json.load(f)
    func_data = reduce_dataset(func_data)
    
    word_dict = build_dictionary(func_data)
    print(word_dict)
    with open(filew, 'w') as f:
        json.dump(func_data,f)
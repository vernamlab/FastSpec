import os
import json
import argparse

class recompiler():
    def __init__(self, inst_set, junk, generated_file,conf):
        self.inst_set = inst_set
        self.junk = junk
        with open('~/FastSpec/dataset/'+str(conf)+'.txt') as f: 
            A = f.readlines()
        for i,a in enumerate(A):
            if '<pad>' in a:
                A[i]= a.replace('<pad>','') 
        self.generated_samples = A

    def recompile(self,recompiled_output):
        if not os.path.exists(recompiled_output):
            os.mkdir(recompiled_output)
        for i, flattened in enumerate(self.generated_samples):
            sample_name = os.path.join(recompiled_output, 'sample_'+str(i)+'.s')            
            with open(sample_name, 'w+') as fout:
                flag=0
                buffer=[]
                labels=[]
                startproc_count = 0 # count '.cfi_startproc'
                endproc_count = 0   # count '.cfi_endproc'
                rep=0
                for _,word in enumerate(flattened.split(' ')):
                    if word == '.cfi_startproc':
                        startproc_count += 1
                    elif word == '.cfi_endproc':
                        endproc_count += 1
                    if 'rep' in word:
                        rep=1
                    junk = 0
                    for j in self.junk:
                        if j in word:
                            junk = 1
                            break
                    if junk:
                        continue
                    # check if word is an opcode or operand
                    
                    if len(buffer) < 1:
                        if word in self.inst_set or ':' in word:
                            flag=flag^flag
                            if ':' in word and not word in labels:
                                labels.append(word)

                    else:
                        if word in self.inst_set or (':' in word and not 'j' in buffer[-1]):
                            if word == 'ret' and rep==1:
                                flag=flag
                                rep=0
                            else:
                                flag=flag^flag
                            if ':' in word and not word in labels:
                                labels.append(word)
                            elif ':' in word and word in labels:
                                flag = 0
                                continue
                     # start filling buffer            
                    if flag:
                        if ':' in word:
                            word = word.replace(':', '')
                        buffer.append(word)
                    # if new instruction comes, write buffer and delete it.
                    else:
                        buffer = ' '.join([w for w in buffer])+'\n'
                        if buffer[0]=='<end>':
                            buffer = '\t#'+buffer[0]+'\n\n'
                        if (not ('.file' in buffer) and not ('@function' in buffer) and not ('.ident' in buffer) 
                        and not ('.size' in buffer) and not ('.section' in buffer) and not ('.space' in buffer)
                        and not ('.cfi_def_cfa' in buffer) and not ('.cfi_def_cfa_register' in buffer)):    
                            fout.write('\t'+buffer)
                        buffer=[word]
                        flag=1
                    # delete junk from buffer
                    if '<end>' in buffer:
                        buffer.remove('<end>')
                if startproc_count > endproc_count:
                    fout.write('\t'+'.cfi_endproc')
                elif startproc_count < endproc_count:
                    fout.close()
                    with open(sample_name, 'r+') as fout:
                        sample = fout.readlines()
                    with open(sample_name, 'w+') as fout:  
                        for i in sample:
                            fout.write(i)
                            if '.cfi_endproc' in i:
                                fout.truncate()
                                break

    def remove_space(self,root,target):
        for sample in os.listdir('/FastSpec/dataset/GAN_samples'):
            with open(root+sample, 'r') as s:
                samp = s.readlines()
            for l, line in enumerate(samp):
                samp[l] = line.replace(' ( ', '(').replace(' ) ',')').replace(' )',')')

            with open(target+sample, 'w') as s:
                s.writelines(samp)
                    

if __name__ == "__main__":

    Inst=['.ident','cmova','xchg','xor','sub','cmovl','movd','add','sfence','mov','.globl','.p2align','cmpq', 'movl', 'movb', 'movslq', 'jnb', 'cmpb', 'leal', 
        'jne', 'cmpl', 'movq','jae','testq','testb','nop','testl','testw','leave','pushq','cmovaeq','orq','addq','ret','leaq','addb',
        'addl','cmovbq','or', 'mul', 'orl','je','jb','<end>','cltq','subq','rep','setae','subb','subl','movzbl','andl','andb','retq','cmovbe','call','sarq',
        'andq','popq','shlq','jmp','sbbq','ja','js','sbbl','shll','callq','cmovll','cqto','incq','notq','xorq','xorb','xorl','sete','sall','seta','jbe','salq','ror',
        '.globl', '.type', 'cmovle','movzwl','lfence','.cfi_endproc','.cfi_def_cfa_offset','.cfi_startproc',".file \"13.c\"",".bss","imull",".cfi_endproc"
        ,".comm","jmpq",".cfi_def_cfa","jl",".cfi_def_cfa_offset 16",".ident",".file \"victim4.c\"","mfence","\"victim9.c\"","setb",".file \"11gcc.c\"",".align"
        ,".globl leakbytelocalfunction","test","prefetcht1",".file \"20.c\"",".globl leakbytenoinlinefunction","pop",".file \"victim14.c\"",".file \"victim8.c\""
        ,"cmovaq","jg","lock",".file \"victim10.c\"",".cfi_def_cfa_register",".cfi_def_cfa 7, 8","not","rol",".file \"05.c\"","movdqa",".file \"01.c\"","incl"
        ,".file \"17.c\"","popq","subb", "cmovaeq", "lfence", "cmovll", "xor", "movaps", "testl", "jle", ".size", "mov", "imul", "addpd", ".cfi_restore 6", "shll"
        , "shr", "leave", "sbbl", "jnb", ".p2align 3", "cmovl", "subq", "sall", ".globl is_x_safe", "cmp", "prefetcht0", "sal", "mul", "movapd", ".cfi_def_cfa_register 6", "andl"
        , "lea", ".file \"11sub.c\"", "testq", "call", ".file \"03.c\"", ".cfi_def_cfa 6, 16", ".globl victim_function", ".text", "xorq", ".cfi_startproc", "sar", "jns"
        , "xorl", "decq", "leaq", "shrl", "movslq", ".p2align 4", "incq", "orq", "jne", "js", ".p2align 4,,15","movss" ,".file \"victim6.c\"","andq","cmovbe","push","movb"
        ,"jb","ret","sbbq","andb",".space 8","movabsq",".cfi_offset %%rbp, -16",".cfi_offset",'.file',"testb","addb",".cfi_offset 6, -16",".p2align 4,,10","jge",".file \"victim12.c\""]
    
    junk = [".note.GNU-stack",'GCC:','Ubuntu7.4.0-1ubuntu1~18.04.1','victim12.c','11sub.c','.file','victim6.c','01.c','03.c','17.c','01.c','05.c','20.c','13.c','victim4.c','victim9.c'
            ,'11gcc.c','victim14.c','victim8.c','victim7.c','victim10.c']
    generated_file = '/save/generated_samples'
    #with open('word_dict.txt','r') as d:
    #    dictionary = json.load(d)
    parser = argparse.ArgumentParser()
    parser.add_argument('--conf','-c',help='Select the configuration.')
    args = parser.parse_args()
    re = recompiler(Inst,junk, generated_file,args.conf)
    recompiled_output = '~/FastSpec/dataset/samples_gadget'+args.conf 
    re.recompile(recompiled_output)
    #re.remove_space(root,target)

	.file "11gcc.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc     
        movl      array1_size(%rip), %eax                     
        cmpq      %rax, %rdi                                   
        jae       ..B1.5     
        movzbl    array1(%rdi), %eax                            
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        cmpb      temp(%rip), %dl                               
        jne       ..B1.6        
        xorl      %edx, %edx    
..B1.4:                         
        movb      %dl, temp(%rip)  
..B1.5:                         
        ret                    
..B1.6:                         
        movl      $-1, %eax                                     
        movl      $1, %edx                                      
        cmova     %eax, %edx                                    
        jmp       ..B1.4     
	.cfi_endproc
mymemcmp:
	.cfi_startproc                
        lea       -1(%rdx), %rax                                
        testq     %rdx, %rdx                                   
        je        ..B2.6        
..B2.3:                         
        movb      (%rdi), %dl                                   
        incq      %rdi                                          
        movb      (%rsi), %cl                                   
        incq      %rsi                                          
        cmpb      %cl, %dl                                      
        jne       ..B2.7      
        decq      %rax                                          
        movq      %rax, %rdx                                    
        incq      %rdx                                          
        jne       ..B2.3       
..B2.6:                         
        xorl      %eax, %eax                                    
        ret                     
..B2.7:                        
        movl      $-1, %edx                                     
        movl      $1, %eax                                      
        movb      -1(%rdi), %dil                                
        cmpb      -1(%rsi), %dil                                
        cmovb     %edx, %eax                                    
        ret               
	.cfi_endproc
	.file "11ker.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.3     
        movzbl    array1(%rdi), %eax                            
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        subb      %dl, temp(%rip)   
..B1.3:                        
        ret                    
	.cfi_endproc
mymemcmp:
	.cfi_startproc
        xorl      %eax, %eax                                    
        testq     %rdx, %rdx                                    
        jbe       ..B2.6       
..B2.3:                         
        movzbl    (%rdi), %eax                                  
        movzbl    (%rsi), %ecx                                  
        subl      %ecx, %eax                                    
        jne       ..B2.6         
        incq      %rdi                                          
        incq      %rsi                                          
        decq      %rdx                                          
        jne       ..B2.3       
..B2.6:                         
        ret              
	.cfi_endproc
	.file "11sub.c"
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
        movq      %rdx, %rcx                                    
        testq     %rcx, %rcx                                    
        je        ..B2.10  
        decq      %rcx                                          
        je        ..B2.6        
..B2.4:                        
        movzbl    (%rdi), %eax                                  
        movzbl    (%rsi), %edx                                  
        cmpl      %edx, %eax                                    
        jne       ..B2.7       
        incq      %rdi                                          
        incq      %rsi                                          
        decq      %rcx                                          
        jne       ..B2.4        
..B2.6:                        
        movzbl    (%rdi), %eax                                  
        movzbl    (%rsi), %edx                                  
..B2.7:                         
        subl      %edx, %eax                                    
        ret                                                     
                               
..B2.10:                       
        xorl      %eax, %eax                                    
        ret                       
	.cfi_endproc
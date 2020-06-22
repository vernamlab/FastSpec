	.file "13.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdi                                    
        jae       ..B2.3        
        movzbl    array1(%rdi), %eax                            
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)    
..B2.3:                        
        ret                              
	.cfi_endproc
	.globl is_x_safe
is_x_safe:
	.cfi_startproc
        xorl      %eax, %eax                                    
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rdi                                    
        setb      %al                                           
        ret                
	.cfi_endproc
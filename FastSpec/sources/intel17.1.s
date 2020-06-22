	.file "17.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movzbl    array1(%rdi), %edx                            
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdx                                    
        jae       ..B1.3        
        shlq      $9, %rdx                                      
        movb      array2(%rdx), %al                             
        andb      %al, temp(%rip) 
..B1.3:                        
        ret                 
	.cfi_endproc
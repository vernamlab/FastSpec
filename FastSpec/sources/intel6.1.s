	.file "victim6.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movslq    bufferSizeMask(%rip), %rax                    
        andq      %rdi, %rax                                    
        cmpq      %rdi, %rax                                    
        jne       ..B1.3       
        movzbl    array1(%rdi), %eax                            
        shlq      $12, %rax                                     
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip) 
..B1.3:                         
        ret                                   
	.cfi_endproc
	.file "victim15.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movq      (%rdi), %rdx                                  
        movslq    array1_size(%rip), %rax                       
        cmpq      %rax, %rdx                                    
        jae       ..B1.3        
        movzbl    array1(%rdx), %eax                            
        shlq      $12, %rax                                     
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)      
..B1.3:                       
        ret                        
	.cfi_endproc
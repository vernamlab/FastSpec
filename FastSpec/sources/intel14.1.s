	.file "victim14.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movslq    array1_size(%rip), %rax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.3        
        xorq      $255, %rdi                                    
        movzbl    array1(%rdi), %eax                            
        shlq      $12, %rax                                     
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)  
..B1.3:                        
        ret                   
	.cfi_endproc
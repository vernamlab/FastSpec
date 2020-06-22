	.file "victim7.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        cmpq      last_x.134.0.1(%rip), %rdi                    
        jne       ..B1.3        
        movzbl    array1(%rdi), %eax                           
        shlq      $12, %rax                                     
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)    
..B1.3:                         
        movslq    array1_size(%rip), %rax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.5       
        movq      %rdi, last_x.134.0.1(%rip)    
..B1.5:                         
        movl      $last_x.134.0.1, %eax                         
        ret                  
	.cfi_endproc
	.bss
	.align 8
	.align 8
last_x.134.0.1:
	.type	last_x.134.0.1,@object
	.size	last_x.134.0.1,8
	.space 8	# pad
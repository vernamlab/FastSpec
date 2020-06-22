	.file "victim4.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        movslq    array1_size(%rip), %rax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.3       
        movl      lasttime(%rip), %eax                          
        andl      $1, %eax                                      
        movzbl    array1(%rax,%rdi,2), %edx                     
        shlq      $12, %rdx                                     
        movb      array2(%rdx), %cl                             
        andb      %cl, temp(%rip) 
..B1.3:                         
        ret              
	.cfi_endproc
	.file "victim12.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        lea       (%rdi,%rsi), %rax                             
        movslq    array1_size(%rip), %rdx                       
        cmpq      %rdx, %rax                                    
        jae       ..B1.3       
        movzbl    array1(%rsi,%rdi), %eax                       
        shlq      $12, %rax                                     
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)              
..B1.3:                         
        ret              
	.cfi_endproc
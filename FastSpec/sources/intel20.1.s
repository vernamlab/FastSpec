	.file "20.c"
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
        andb      %dl, temp(%rip)  
..B1.3:                         
        ret                       
	.cfi_endproc
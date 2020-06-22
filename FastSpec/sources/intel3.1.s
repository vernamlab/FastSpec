	.file "03.c"
	.text
	.align    16,0x90
	.globl victim_function
victim_function:
	.cfi_startproc
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.3       
        movzbl    array1(%rdi), %edi   
        jmp       leakByteNoinlineFunction                      
                               
..B1.3:                         
        ret                                                     
	.cfi_endproc
leakByteNoinlineFunction:
	.cfi_startproc
        movzbl    %dil, %eax                                    
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)                               
        ret 
	.cfi_endproc
	.file "01.c"
	.text
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp                                          
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jae       ..B1.3                             
..B1.2:                         
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      $array1, %edx                                 
        addq      -16(%rbp), %rdx                               
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        imull     $512, %edx, %edx                              
        movslq    %edx, %rdx                                    
        movl      $array2, %ecx                                 
        addq      %rdx, %rcx                                    
        movzbl    (%rcx), %edx                                  
        movzbl    %dl, %edx                                     
        andl      %edx, %eax                                    
        movb      %al, temp(%rip)   
..B1.3:                         
        leave                                                   
	.cfi_restore 6
        ret   
	.cfi_endproc

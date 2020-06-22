	.file "17.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp    
        movq      %rsp, %rbp
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movl      $array1, %eax                                 
        addq      -16(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movl      array1_size(%rip), %edx                       
        cmpl      %edx, %eax                                    
        jae       ..B1.3        
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
        ret                                                   
	.cfi_endproc
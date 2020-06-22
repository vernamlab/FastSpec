	.file "victim8.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp        
        movq      %rsp, %rbp 
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        movslq    %edx, %rdx                                    
        cmpq      %rdx, %rax                                    
        jb        ..B1.3        
        movq      $0, -8(%rbp)                                  
        jmp       ..B1.4       
..B1.3:                        
        movq      -16(%rbp), %rax                               
        movq      %rax, -8(%rbp)                                
..B1.4:                         
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      $array1, %edx                                 
        addq      -8(%rbp), %rdx                                
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        imull     $4096, %edx, %edx                             
        movslq    %edx, %rdx                                    
        movl      $array2, %ecx                                 
        addq      %rdx, %rcx                                    
        movzbl    (%rcx), %edx                                  
        movzbl    %dl, %edx                                     
        andl      %edx, %eax                                    
        movb      %al, temp(%rip)                               
        leave         
        ret             
	.cfi_endproc
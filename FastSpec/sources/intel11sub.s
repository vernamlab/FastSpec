	.file "11sub.c"
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
        movq      %rdi, -8(%rbp)                                
        movq      -8(%rbp), %rax                                
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jae       ..B1.4          
        movl      $temp, %eax                                   
        movl      $array1, %edx                                 
        addq      -8(%rbp), %rdx                                
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        imull     $512, %edx, %edx                              
        movslq    %edx, %rdx                                    
        movl      $array2, %ecx                                 
        addq      %rdx, %rcx                                    
        movl      $1, %edx                                      
        movq      %rax, %rdi                                    
        movq      %rcx, %rsi  
        call      mymemcmp      
        movl      %eax, -16(%rbp)   
        movl      -16(%rbp), %eax                               
        movb      %al, temp(%rip)  
..B1.4:                        
        leave          
        ret                 
	.cfi_endproc
mymemcmp:
	.cfi_startproc
        pushq     %rbp         
        movq      %rsp, %rbp   
        subq      $48, %rsp                                     
        movq      %rdi, -48(%rbp)                               
        movq      %rsi, -40(%rbp)                               
        movq      %rdx, -32(%rbp)                               
        movq      -48(%rbp), %rax                               
        movq      %rax, -24(%rbp)                               
        movq      -40(%rbp), %rax                               
        movq      %rax, -16(%rbp)                               
        movq      -32(%rbp), %rax                               
        testq     %rax, %rax                                    
        jne       ..B2.3       
        movl      $0, %eax                                      
        leave                 
..B2.3:                       
        movq      $-1, %rax                                     
        addq      -32(%rbp), %rax                               
        movq      %rax, -8(%rbp)                                
        movq      -8(%rbp), %rax                                
        movq      %rax, -32(%rbp)                               
        movq      -8(%rbp), %rax                                
        testq     %rax, %rax                                    
        je        ..B2.6     
        movq      -24(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movq      -16(%rbp), %rdx                               
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        cmpl      %edx, %eax                                    
        jne       ..B2.6      
        movl      $1, %eax                                      
        addq      -24(%rbp), %rax                               
        movq      %rax, -24(%rbp)                               
        movl      $1, %eax                                      
        addq      -16(%rbp), %rax                               
        movq      %rax, -16(%rbp)                               
        jmp       ..B2.3        
..B2.6:                       
        movq      -24(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movq      -16(%rbp), %rdx                               
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        negl      %edx                                          
        addl      %edx, %eax                                    
        leave              
        ret                           
	.cfi_endproc

	.file "11ker.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp 
        movq      %rsp, %rbp 
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
        movq      %rdi, -40(%rbp)                               
        movq      %rsi, -32(%rbp)                               
        movq      %rdx, -24(%rbp)                               
        movl      $0, -48(%rbp)                                 
        movq      -40(%rbp), %rax                               
        movq      %rax, -16(%rbp)                               
        movq      -32(%rbp), %rax                               
        movq      %rax, -8(%rbp)                    
..B2.2:                        
        movq      -24(%rbp), %rax                               
        testq     %rax, %rax                                    
        ja        ..B2.4       
        jmp       ..B2.5       
..B2.3:                       
        movl      $1, %eax                                      
        addq      -16(%rbp), %rax                               
        movq      %rax, -16(%rbp)                               
        movl      $1, %eax                                      
        addq      -8(%rbp), %rax                                
        movq      %rax, -8(%rbp)                                
        movq      $-1, %rax                                     
        addq      -24(%rbp), %rax                               
        movq      %rax, -24(%rbp)                               
        jmp       ..B2.2       
..B2.4:                         
        movq      -16(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movq      -8(%rbp), %rdx                                
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        negl      %edx                                          
        addl      %edx, %eax                                    
        movl      %eax, -44(%rbp)                               
        movl      -44(%rbp), %eax                               
        movl      %eax, -48(%rbp)                               
        movl      -44(%rbp), %eax                               
        testl     %eax, %eax                                    
        je        ..B2.3       
..B2.5:                         
        movl      -48(%rbp), %eax                               
        leave            
        ret                      
	.cfi_endproc
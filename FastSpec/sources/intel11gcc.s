	.file "11gcc.c"
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
..B1.3:                         
        movl      -16(%rbp), %eax                               
        movb      %al, temp(%rip)  
..B1.4:                        
        leave           
        ret           
	.cfi_endproc
	.globl mymemcmp
mymemcmp:
	.cfi_startproc                       
        pushq     %rbp        
        movq      %rsp, %rbp  
        subq      $64, %rsp                                     
        movq      %rdi, -48(%rbp)                               
        movq      %rsi, -40(%rbp)                               
        movq      %rdx, -32(%rbp)                               
        movq      -48(%rbp), %rax                               
        movq      %rax, -24(%rbp)                               
        movq      -40(%rbp), %rax                               
        movq      %rax, -16(%rbp)  
..B2.2:                         
        movq      -32(%rbp), %rax                               
        movq      %rax, -8(%rbp)                                
        movq      $-1, %rax                                     
        addq      -32(%rbp), %rax                               
        movq      %rax, -32(%rbp)                               
        movq      -8(%rbp), %rax                                
        testq     %rax, %rax                                    
        jbe       ..B2.8         
        movq      -24(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movl      %eax, -64(%rbp)                               
        movq      -16(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movl      %eax, -60(%rbp)                               
        movl      $1, %eax                                      
        addq      -16(%rbp), %rax                               
        movq      %rax, -16(%rbp)                               
        movl      $1, %eax                                      
        addq      -24(%rbp), %rax                               
        movq      %rax, -24(%rbp)                               
        movl      -64(%rbp), %eax                               
        movl      -60(%rbp), %edx                               
        cmpl      %edx, %eax                                    
        je        ..B2.2      
        movq      $-1, %rax                                     
        addq      -24(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movq      $-1, %rdx                                     
        addq      -16(%rbp), %rdx                               
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        cmpl      %edx, %eax                                    
        jl        ..B2.6       
        movl      $1, -56(%rbp)                                
        jmp       ..B2.7        
..B2.6:                       
        movl      $-1, -56(%rbp)               
..B2.7:                         
        movl      -56(%rbp), %eax                             
        leave                     
        ret                     
..B2.8:                       
        movl      $0, %eax                                      
        leave               
        ret                            
	.cfi_endproc
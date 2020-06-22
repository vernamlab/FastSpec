	.file "05-no-unsigned.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc              
        pushq     %rbp          
        movq      %rsp, %rbp        
        subq      $16, %rsp                                     
        movq      %rdi, -8(%rbp)                               
        movq      -8(%rbp), %rax                                
        testq     %rax, %rax                                    
        jl        ..B1.6          
        movq      -8(%rbp), %rax                                
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jge       ..B1.6      
        movl      $-1, %eax                                     
        addl      -8(%rbp), %eax                                
        movl      %eax, -16(%rbp)  
..B1.4:                         
        movl      -16(%rbp), %eax                               
        testl     %eax, %eax                                    
        jl        ..B1.6        
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      -16(%rbp), %edx                               
        movslq    %edx, %rdx                                    
        movl      $array1, %ecx                                 
        addq      %rdx, %rcx                                    
        movzbl    (%rcx), %edx                                  
        movzbl    %dl, %edx                                     
        imull     $512, %edx, %edx                              
        movslq    %edx, %rdx                                    
        movl      $array2, %ecx                                 
        addq      %rdx, %rcx                                    
        movzbl    (%rcx), %edx                                  
        movzbl    %dl, %edx                                     
        andl      %edx, %eax                                    
        movb      %al, temp(%rip)                               
        movl      $-1, %eax                                     
        addl      -16(%rbp), %eax                               
        movl      %eax, -16(%rbp)                               
        jmp       ..B1.4        
..B1.6:                         
        leave                                                 
	.cfi_restore 6
        ret                    
	.cfi_endproc
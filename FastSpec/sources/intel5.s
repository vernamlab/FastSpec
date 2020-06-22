	.file "05.c"
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
        jae       ..B1.5        
        movl      $-1, %eax                             
        addl      -8(%rbp), %eax                               
        movl      %eax, -16(%rbp)    
..B1.3:                         
        movl      -16(%rbp), %eax                               
        testl     %eax, %eax                                   
        jl        ..B1.5       
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
        jmp       ..B1.3        
..B1.5:                         
        leave   
        ret             
	.cfi_endproc
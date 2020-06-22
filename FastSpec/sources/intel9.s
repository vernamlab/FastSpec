	.file "victim9.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp               
        movq      %rsp, %rbp   
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      %rsi, -8(%rbp)                                
        movq      -8(%rbp), %rax                                
        movl      (%rax), %eax                                  
        testl     %eax, %eax                                    
        je        ..B1.3        
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      $array1, %edx                                 
        addq      -16(%rbp), %rdx                               
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
..B1.3:                         
        leave               
        ret              
	.cfi_endproc
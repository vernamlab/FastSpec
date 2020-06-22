	.file "13.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp       
        movq      %rsp, %rbp   
        subq      $16, %rsp                                     
        movq      %rdi, -8(%rbp)                                
        movq      -8(%rbp), %rax                                
        movq      %rax, %rdi        
        call      is_x_safe           
        movl      %eax, -16(%rbp)  
        movl      -16(%rbp), %eax                               
        testl     %eax, %eax                                   
        je        ..B2.4     
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      $array1, %edx                                 
        addq      -8(%rbp), %rdx                                
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
..B2.4:                        
        leave       
        ret                            
	.cfi_endproc

is_x_safe:
	.cfi_startproc
        pushq     %rbp  
        movq      %rsp, %rbp  
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jb        ..B1.3        
        movl      $0, %eax                                      
        leave               
        ret              
..B1.3:                         
        movl      $1, %eax                                      
        leave      
        ret            
	.cfi_endproc
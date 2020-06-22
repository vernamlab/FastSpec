	.file "victim15.c"
	.text
	.globl victim_function
victim_function:
        .cfi_startproc
        pushq     %rbp  
        movq      %rsp, %rbp  
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movq      (%rax), %rax                                  
        movl      array1_size(%rip), %edx                       
        movslq    %edx, %rdx                                    
        cmpq      %rdx, %rax                                    
        jae       ..B1.3        
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movq      -16(%rbp), %rdx                               
        movl      $array1, %ecx                                 
        addq      (%rdx), %rcx                                  
        movzbl    (%rcx), %edx                                  
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
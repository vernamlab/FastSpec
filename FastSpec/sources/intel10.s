	.file "victim10.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp           
        movq      %rsp, %rbp   
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movb      %sil, -8(%rbp)                                
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        movslq    %edx, %rdx                                    
        cmpq      %rdx, %rax                                    
        jae       ..B1.4        
        movl      $array1, %eax                                 
        addq      -16(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movzbl    %al, %eax                                     
        movzbl    -8(%rbp), %edx                                
        movzbl    %dl, %edx                                     
        cmpl      %edx, %eax                                    
        jne       ..B1.4       
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movl      $array2, %edx                                 
        movl      $12288, %ecx                                  
        addq      %rcx, %rdx                                    
        movzbl    (%rdx), %edx                                  
        movzbl    %dl, %edx                                     
        andl      %edx, %eax                                    
        movb      %al, temp(%rip)  
..B1.4:                        
        leave            
        ret                 
	.cfi_endproc
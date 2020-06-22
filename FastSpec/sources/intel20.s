	.file "20.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp                
        movq      %rsp, %rbp     
        subq      $16, %rsp                                     
        movq      %rdi, -8(%rbp)                                
        movl      $array1, %eax                                 
        addq      -8(%rbp), %rax                                
        movzbl    (%rax), %eax                                  
        movb      %al, -16(%rbp)                                
        movq      -8(%rbp), %rax                                
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jae       ..B1.3        
        movzbl    temp(%rip), %eax                              
        movzbl    %al, %eax                                     
        movzbl    -16(%rbp), %edx                               
        movzbl    %dl, %edx                                     
        imull     $512, %edx, %edx                              
        movslq    %edx, %rdx                                    
        movl      $array2, %ecx                                 
        addq      %rdx, %rcx                                    
        movzbl    (%rcx), %edx                                  
        movzbl    %dl, %edx                                     
        andl      %edx, %eax                                    
        movb      %al, temp(%rip)                               
        jmp       ..B1.4        
..B1.3:                         
        movb      $0, -16(%rbp)  
..B1.4:            
        leave                         
        ret                                                    
	.cfi_endproc
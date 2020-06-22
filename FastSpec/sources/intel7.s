	.file "victim7.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp           
        movq      %rsp, %rbp  
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movq      last_x.121(%rip), %rdx                        
        cmpq      %rdx, %rax                                    
        jne       ..B1.3        
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
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        movslq    %edx, %rdx                                    
        cmpq      %rdx, %rax                                    
        jae       ..B1.5        
..B1.4:                        
        movq      -16(%rbp), %rax                               
        movq      %rax, last_x.121(%rip)        
..B1.5:                         
        movl      $last_x.121, %eax                             
        leave                           
        ret                          
	.cfi_endproc
	.bss
	.align 8
	.align 8
last_x.121:
	.type	last_x.121,@object
	.size	last_x.121,8
	.space 8	
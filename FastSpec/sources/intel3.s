	.file "03.c"
	.text
	.globl victim_function
victim_function:
	.cfi_startproc
        pushq     %rbp  
        movq      %rsp, %rbp  
        subq      $16, %rsp                                     
        movq      %rdi, -16(%rbp)                               
        movq      -16(%rbp), %rax                               
        movl      array1_size(%rip), %edx                       
        cmpq      %rdx, %rax                                    
        jae       ..B2.3        
..B2.2:                         
        movl      $array1, %eax                                 
        addq      -16(%rbp), %rax                               
        movzbl    (%rax), %eax                                  
        movl      %eax, %edi          
        call      leakByteNoinlineFunction   
..B2.3:                         
        leave       
        ret                            
	.cfi_endproc
	.text
	.globl leakByteNoinlineFunction
leakByteNoinlineFunction:
	.cfi_startproc
        pushq     %rbp 
        movq      %rsp, %rbp   
        subq      $16, %rsp                                     
        movb      %dil, -16(%rbp)                               
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
        leave     
        ret                           
	.cfi_endproc
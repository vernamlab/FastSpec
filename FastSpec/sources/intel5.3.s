	.file "05-no-unsigned.c"
	.text
        .align    16,0x90
	.globl victim_function
victim_function:           
	.cfi_startproc                     
        testq     %rdi, %rdi
        jl        ..B1.11      
        movl      array1_size(%rip), %eax                      
        cmpq      %rax, %rdi                                   
        jge       ..B1.11      
        decq      %rdi                                          
        movl      %edi, %edx                                    
        testl     %edx, %edx                                    
        jl        ..B1.11   
        movb      temp(%rip), %r9b                              
        lea       1(%rdx), %esi                                 
        movl      %esi, %ecx                                    
        movl      $1, %eax                                      
        xorl      %r8d, %r8d                                    
        shrl      $1, %ecx                                      
        je        ..B1.8        
        movslq    %esi, %rax  
..B1.6:                         
        lea       (%rdx,%r8,2), %r10d                           
        incl      %r8d                                          
        movslq    %r10d, %r10                                   
        subq      %rax, %r10                                    
        movzbl    1+array1(%r10), %r11d                         
        shlq      $9, %r11                                      
        andb      array2(%r11), %r9b                            
        movzbl    2+array1(%r10), %r11d                         
        shlq      $9, %r11                                      
        andb      array2(%r11), %r9b                            
        cmpl      %ecx, %r8d                                    
        jb        ..B1.6       
        lea       1(%r8,%r8), %eax  
..B1.8:                         
        lea       -1(%rax), %edx                                
        cmpl      %esi, %edx                                    
        jae       ..B1.10       
        movslq    %edi, %rdx                                    
        movslq    %esi, %rsi                                    
        movslq    %eax, %rax                                    
        subq      %rsi, %rdx                                    
        movzbl    array1(%rax,%rdx), %ecx                       
        shlq      $9, %rcx                                      
        andb      array2(%rcx), %r9b          
..B1.10:                        
        movb      %r9b, temp(%rip)                              
..B1.11:                        
        ret                                                    
        .align    16,0x90
	.cfi_endproc
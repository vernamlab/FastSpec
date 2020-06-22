	.file "01.c"
	.text
    .align    16,0x90
	.globl victim_function
victim_function:
..B1.1:                         
	.cfi_startproc
..L2:
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdi                                    
        jae       ..B1.3        
..B1.2:                         
        movzbl    array1(%rdi), %eax                            
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)                               
                                
..B1.3:                         
        ret                                                    
        .align    16,0x90
	.cfi_endproc
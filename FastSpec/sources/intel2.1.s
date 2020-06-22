	.file "02.c"
    .text
    .align    16,0x90
	.globl victim_function
victim_function:
..B2.1:                         
	.cfi_startproc
        movl      array1_size(%rip), %eax                       
        cmpq      %rax, %rdi                                    
        jae       ..B2.3      
        movzbl    array1(%rdi), %eax                            
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)      
..B2.3:                         
        ret                                                   
    .align    16,0x90
	.cfi_endproc
	.text
    .align    16,0x90
	.globl leakByteLocalFunction
leakByteLocalFunction:                    
	.cfi_startproc                                       
        movzbl    %dil, %eax                                    
        shlq      $9, %rax                                      
        movb      array2(%rax), %dl                             
        andb      %dl, temp(%rip)                               
        ret                                                     
        .align    16,0x90
	.cfi_endproc

	.text
	.globl	victim_function
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:  
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.LBB0_2
	leaq	array1(%rip), %rax
	movzbl	(%rdi,%rax), %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
.LBB0_2:
	retq
	.cfi_endproc
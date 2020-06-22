.text
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	array1_size(%rip), %eax
	movl	%eax, %eax
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	movq	-8(%rbp), %rax
	xorb	$-1, %al
	movzbl	array1(%rax), %eax
	movzbl	%al, %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
.L3:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

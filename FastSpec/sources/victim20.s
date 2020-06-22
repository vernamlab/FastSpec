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
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$array1, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	array1_size(%rip), %eax
	movl	%eax, %eax
	cmpq	%rax, -24(%rbp)
	jnb	.L2
	movzbl	-1(%rbp), %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
	jmp	.L4
.L2:
	movb	$0, -1(%rbp)
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

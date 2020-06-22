	.file	"victim7.c"
	.text
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	last_x.2288(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L2
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$12, %eax
	movslq	%eax, %rdx
	leaq	array2(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
.L2:
	movl	array1_size(%rip), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	movq	-8(%rbp), %rax
	movq	%rax, last_x.2288(%rip)
.L3:
	leaq	last_x.2288(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	victim_function, .-victim_function
	.local	last_x.2288
	.comm	last_x.2288,8,8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

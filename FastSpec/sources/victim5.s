	.file	"victim5.c"
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
	movq	%rdi, -24(%rbp)
	movl	array1_size(%rip), %eax
	cltq
	cmpq	%rax, -24(%rbp)
	jnb	.L3
	movq	-24(%rbp), %rax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	array1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$12, %eax
	movslq	%eax, %rdx
	leaq	array2(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
	nop
.L3:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	victim_function, .-victim_function
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"victim7.c"
	.text
	.p2align 4,,15
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB23:
	.cfi_startproc
	cmpq	%rdi, last_x.2485(%rip)
	jne	.L2
	leaq	array1(%rip), %rax
	leaq	array2(%rip), %rdx
	movzbl	(%rax,%rdi), %eax
	sall	$12, %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	andb	%al, temp(%rip)
.L2:
	movslq	array1_size(%rip), %rax
	cmpq	%rdi, %rax
	jbe	.L3
	movq	%rdi, last_x.2485(%rip)
.L3:
	leaq	last_x.2485(%rip), %rax
	ret
	.cfi_endproc
.LFE23:
	.size	victim_function, .-victim_function
	.local	last_x.2485
	.comm	last_x.2485,8,8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"victim4.c"
	.text
	.p2align 4,,15
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB23:
	.cfi_startproc
	movslq	array1_size(%rip), %rax
	cmpq	%rdi, %rax
	jbe	.L1
	movl	lasttime(%rip), %eax
	movl	%eax, %edx
	leaq	array1(%rip), %rax
	andl	$1, %edx
	addq	%rdx, %rax
	leaq	array2(%rip), %rdx
	movzbl	(%rax,%rdi,2), %eax
	sall	$12, %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	andb	%al, temp(%rip)
.L1:
	rep ret
	.cfi_endproc
.LFE23:
	.size	victim_function, .-victim_function
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

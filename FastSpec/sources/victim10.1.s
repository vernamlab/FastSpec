	.file	"victim10.c"
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
	leaq	array1(%rip), %rax
	cmpb	%sil, (%rax,%rdi)
	je	.L4
.L1:
	rep ret
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	12288+array2(%rip), %eax
	andb	%al, temp(%rip)
	ret
	.cfi_endproc
.LFE23:
	.size	victim_function, .-victim_function
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

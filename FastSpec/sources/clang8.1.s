	.text
	.file	"victim8.c"
	.globl	victim_function         # -- Begin function victim_function
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                        # @victim_function
	.cfi_startproc
# %bb.0:
	movslq	array1_size(%rip), %rax
	xorl	%ecx, %ecx
	cmpq	%rdi, %rax
	cmovaq	%rdi, %rcx
	movzbl	array1(%rcx), %eax
	shlq	$12, %rax
	movb	array2(%rax), %al
	andb	%al, temp(%rip)
	retq
.Lfunc_end0:
	.size	victim_function, .Lfunc_end0-victim_function
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"
	.section	".note.GNU-stack","",@progbits

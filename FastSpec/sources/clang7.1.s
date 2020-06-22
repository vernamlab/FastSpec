	.text
	.file	"victim7.c"
	.globl	victim_function         # -- Begin function victim_function
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                        # @victim_function
	.cfi_startproc
# %bb.0:
	cmpq	%rdi, victim_function.last_x(%rip)
	jne	.LBB0_2
# %bb.1:
	movzbl	array1(%rdi), %eax
	shlq	$12, %rax
	movb	array2(%rax), %al
	andb	%al, temp(%rip)
.LBB0_2:
	movslq	array1_size(%rip), %rax
	cmpq	%rdi, %rax
	jbe	.LBB0_4
# %bb.3:
	movq	%rdi, victim_function.last_x(%rip)
.LBB0_4:
	movl	$victim_function.last_x, %eax
	retq
.Lfunc_end0:
	.size	victim_function, .Lfunc_end0-victim_function
	.cfi_endproc
                                        # -- End function
	.type	victim_function.last_x,@object # @victim_function.last_x
	.local	victim_function.last_x
	.comm	victim_function.last_x,8,8

	.ident	"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"
	.section	".note.GNU-stack","",@progbits

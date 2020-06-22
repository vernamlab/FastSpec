.text
	.file	"17.c"
	.globl	victim_function     # -- Begin function victim_function_v17
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v17
	.cfi_startproc
# %bb.0:
	leaq	array1(%rip), %rax
	movzbl	(%rdi,%rax), %eax
	cmpl	%eax, array1_size(%rip)
	jbe	.LBB0_2
# %bb.1:
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
.LBB0_2:
	retq
.Lfunc_end0:
#	.size	victim_function_v17, .Lfunc_end0-victim_function_v17
	.cfi_endproc

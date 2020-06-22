	.text
	.file	"victim7.c"
	.globl	victim_function         # -- Begin function victim_function
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                        # @victim_function
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	victim_function.last_x, %rdi
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movzbl	array1(,%rax), %ecx
	shll	$12, %ecx
	movslq	%ecx, %rax
	movzbl	array2(,%rax), %ecx
	movzbl	temp, %edx
	andl	%ecx, %edx
	movb	%dl, %sil
	movb	%sil, temp
.LBB0_2:
	movq	-8(%rbp), %rax
	movslq	array1_size, %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	%rax, victim_function.last_x
.LBB0_4:
	movabsq	$victim_function.last_x, %rax
	popq	%rbp
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

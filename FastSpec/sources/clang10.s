	.text
	.file	"victim10.c"
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movslq	array1_size, %rcx
	cmpq	%rcx, %rdi
	jae	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movzbl	array1(,%rax), %ecx
	movzbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_3
# %bb.2:
	movzbl	array2+12288, %eax
	movzbl	temp, %ecx
	andl	%eax, %ecx
	movb	%cl, %dl
	movb	%dl, temp
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
	.size	victim_function, .Lfunc_end0-victim_function
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"
	.section	".note.GNU-stack","",@progbits

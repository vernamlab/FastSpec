.text
	.file	"11sub.c"
	.globl	victim_function     # -- Begin function victim_function_v11
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v11
	.cfi_startproc
# %bb.0:
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.LBB0_2
# %bb.1:
	leaq	array1(%rip), %rax
	movzbl	(%rdi,%rax), %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	subb	%al, temp(%rip)
.LBB0_2:
	retq
.Lfunc_end0:
#	.size	victim_function_v11, .Lfunc_end0-victim_function_v11
	.cfi_endproc
                                        # -- End function
	.globl	mymemcmp                # -- Begin function mymemcmp
	.p2align	4, 0x90
	.type	mymemcmp,@function
mymemcmp:                               # @mymemcmp
	.cfi_startproc
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB1_1
# %bb.2:
	cmpq	$1, %rdx
	je	.LBB1_6
# %bb.3:
	movl	$1, %eax
	subq	%rdx, %rax
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	cmpb	(%rsi), %cl
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %rdi
	addq	$1, %rsi
	incq	%rax
	jne	.LBB1_4
.LBB1_6:
	movzbl	(%rdi), %eax
	movzbl	(%rsi), %ecx
	subl	%ecx, %eax
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	mymemcmp, .Lfunc_end1-mymemcmp
	.cfi_endproc

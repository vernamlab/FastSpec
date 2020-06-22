.text
	.file	"11ker.c"
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
	je	.LBB1_4
# %bb.1:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %eax
	movzbl	(%rsi,%r8), %ecx
	subl	%ecx, %eax
	jne	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %r8
	cmpq	%r8, %rdx
	jne	.LBB1_2
.LBB1_4:
	xorl	%eax, %eax
.LBB1_5:
	retq
.Lfunc_end1:
	.size	mymemcmp, .Lfunc_end1-mymemcmp
	.cfi_endproc

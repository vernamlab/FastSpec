	.text
	.file	"13.c"
                                        # -- End function
	.globl	victim_function     # -- Begin function victim_function_v13
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v13
	.cfi_startproc
# %bb.0:
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.LBB1_2
# %bb.1:
	leaq	array1(%rip), %rax
	movzbl	(%rdi,%rax), %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
.LBB1_2:
	retq
.Lfunc_end1:
#	.size	victim_function_v13, .Lfunc_end1-victim_function_v13
	.cfi_endproc
	.globl	is_x_safe               # -- Begin function is_x_safe
	.p2align	4, 0x90
	.type	is_x_safe,@function
is_x_safe:                              # @is_x_safe
	.cfi_startproc
# %bb.0:
	movl	array1_size(%rip), %ecx
	xorl	%eax, %eax
	cmpq	%rdi, %rcx
	seta	%al
	retq
.Lfunc_end0:
	.size	is_x_safe, .Lfunc_end0-is_x_safe
	.cfi_endproc

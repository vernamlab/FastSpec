	.text                          # -- End function
	.globl	victim_function     # -- Begin function victim_function_v02
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v02
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
	#.size	victim_function_v02, .Lfunc_end1-victim_function_v02
	.cfi_endproc

	.file	"02.c"
	.globl	leakByteLocalFunction   # -- Begin function leakByteLocalFunction
	.p2align	4, 0x90
	.type	leakByteLocalFunction,@function
leakByteLocalFunction:                  # @leakByteLocalFunction
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
	retq
.Lfunc_end0:
	.size	leakByteLocalFunction, .Lfunc_end0-leakByteLocalFunction
	.cfi_endproc
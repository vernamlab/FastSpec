.text
	.file	"17.c"
	.globl	victim_function     # -- Begin function victim_function_v17
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v17
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	array1(%rip), %rax
	movzbl	(%rax,%rdi), %ecx
	cmpl	array1_size(%rip), %ecx
	jae	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	leaq	array1(%rip), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$9, %edx
	movslq	%edx, %rax
	leaq	array2(%rip), %rcx
	movzbl	(%rcx,%rax), %edx
	movzbl	temp(%rip), %esi
	andl	%edx, %esi
	movb	%sil, %dil
	movb	%dil, temp(%rip)
.LBB0_2:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
#	.size	victim_function_v17, .Lfunc_end0-victim_function_v17
	.cfi_endproc

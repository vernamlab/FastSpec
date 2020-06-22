.text
	.file	"12.c"
	.globl	victim_function     # -- Begin function victim_function_v12
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v12
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movl	array1_size(%rip), %eax
	movl	%eax, %edi
	cmpq	%rdi, %rsi
	jae	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
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
#	.size	victim_function_v12, .Lfunc_end0-victim_function_v12
	.cfi_endproc

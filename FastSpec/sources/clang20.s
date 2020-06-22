.text
	.file	"20.c"
	.globl	victim_function     # -- Begin function victim_function_v20
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v20
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
	movb	(%rax,%rdi), %cl
	movb	%cl, -9(%rbp)
	movq	-8(%rbp), %rax
	movl	array1_size(%rip), %edx
	movl	%edx, %edi
	cmpq	%rdi, %rax
	jae	.LBB0_2
# %bb.1:
	movzbl	-9(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	array2(%rip), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	temp(%rip), %esi
	andl	%eax, %esi
	movb	%sil, %dil
	movb	%dil, temp(%rip)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, -9(%rbp)
.LBB0_3:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
#	.size	victim_function_v20, .Lfunc_end0-victim_function_v20
	.cfi_endproc

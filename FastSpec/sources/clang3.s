.text
	.file	"03.c"
	                      # -- End function
	.globl	victim_function     # -- Begin function victim_function_v03
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v03
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	array1_size(%rip), %eax
	movl	%eax, %ecx
	cmpq	%rcx, %rdi
	jae	.LBB1_2
# %bb.1:
	movq	-8(%rbp), %rax
	leaq	array1(%rip), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	leakByteNoinlineFunction
.LBB1_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
#	.size	victim_function_v03, .Lfunc_end1-victim_function_v03
	.cfi_endproc

	.globl	leakByteNoinlineFunction # -- Begin function leakByteNoinlineFunction
	.p2align	4, 0x90
	.type	leakByteNoinlineFunction,@function
leakByteNoinlineFunction:               # @leakByteNoinlineFunction
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	shll	$9, %edi
	movslq	%edi, %rcx
	leaq	array2(%rip), %rdx
	movzbl	(%rdx,%rcx), %edi
	movzbl	temp(%rip), %esi
	andl	%edi, %esi
	movb	%sil, %al
	movb	%al, temp(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	leakByteNoinlineFunction, .Lfunc_end0-leakByteNoinlineFunction
	.cfi_endproc
                  
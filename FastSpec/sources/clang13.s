.text
	.file	"13.c"
	                                        # -- End function
	.globl	victim_function     # -- Begin function victim_function_v13
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v13
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	array1_size(%rip), %eax
	movl	%eax, %ecx
	cmpq	%rcx, %rdi
	jae	.LBB1_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:
	movl	$0, -4(%rbp)
.LBB1_3:
	cmpl	$0, -4(%rbp)
	je	.LBB1_5
# %bb.4:
	movq	-24(%rbp), %rax
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
.LBB1_5:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
#	.size	victim_function, .Lfunc_end1-victim_function_v13
	.cfi_endproc

	.globl	is_x_safe               # -- Begin function is_x_safe
	.p2align	4, 0x90
	.type	is_x_safe,@function
is_x_safe:                              # @is_x_safe
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	array1_size(%rip), %eax
	movl	%eax, %ecx
	cmpq	%rcx, %rdi
	jae	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	is_x_safe, .Lfunc_end0-is_x_safe
	.cfi_endproc

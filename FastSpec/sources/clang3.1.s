.text
	.file	"03.c"
	                     # -- End function
	.globl	victim_function     # -- Begin function victim_function_v03
	.p2align	4, 0x90
	.type	victim_function,@function
victim_function:                    # @victim_function_v03
	.cfi_startproc
# %bb.0:
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.LBB1_1
# %bb.2:
	leaq	array1(%rip), %rax
	movzbl	(%rdi,%rax), %edi
	jmp	leakByteNoinlineFunction # TAILCALL
.LBB1_1:
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
	movl	%edi, %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
	retq
.Lfunc_end0:
	.size	leakByteNoinlineFunction, .Lfunc_end0-leakByteNoinlineFunction
	.cfi_endproc
                   

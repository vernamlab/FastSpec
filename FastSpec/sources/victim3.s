.text
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	array1_size(%rip), %eax
	movl	%eax, %eax
	cmpq	%rax, -8(%rbp)
	jnb	.L4
	movq	-8(%rbp), %rax
	addq	$array1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	leakByteNoinlineFunction
.L4:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc


	.globl	leakByteNoinlineFunction
	.type	leakByteNoinlineFunction, @function
leakByteNoinlineFunction:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	leakByteNoinlineFunction, .-leakByteNoinlineFunction
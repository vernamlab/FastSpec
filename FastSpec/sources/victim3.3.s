	.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB12:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rax, %rdi
	sbbq	%rax, %rax
	testq	%rax, %rax
	jne	.L7
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	andq	%rax, %rdi
	movzbl	array1(%rdi), %edi
	jmp	leakByteNoinlineFunction
	.cfi_endproc

	.p2align 4
	.globl	leakByteNoinlineFunction
	.type	leakByteNoinlineFunction, @function
leakByteNoinlineFunction:
.LFB11:
	.cfi_startproc
	salq	$9, %rdi
	andl	$130560, %edi
	movzbl	array2(%rdi), %eax
	andb	%al, temp(%rip)
	ret
	.cfi_endproc
.LFE11:
	.size	leakByteNoinlineFunction, .-leakByteNoinlineFunction
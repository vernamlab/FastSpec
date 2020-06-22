.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB12:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.L3
	movzbl	array1(%rdi), %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %eax
	andb	%al, temp(%rip)
.L3:
	ret
	.cfi_endproc

	.p2align 4
	.globl	leakByteLocalFunction
	.type	leakByteLocalFunction, @function
leakByteLocalFunction:
.LFB11:
	.cfi_startproc
	salq	$9, %rdi
	andl	$130560, %edi
	movzbl	array2(%rdi), %eax
	andb	%al, temp(%rip)
	ret
	.cfi_endproc
.LFE11:
	.size	leakByteLocalFunction, .-leakByteLocalFunction

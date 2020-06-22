.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB11:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rax, %rdi
	sbbq	%rcx, %rcx
	testq	%rcx, %rcx
	je	.L1
	leal	-1(%rdi), %eax
	movzbl	temp(%rip), %esi
	cltq
	cqto
	notq	%rdx
	andq	%rdx, %rcx
	testq	%rdx, %rdx
	jne	.L6
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	andq	%rdx, %rcx
.L6:
	andq	%rcx, %rax
	movzbl	array1(%rax), %edx
	subq	$1, %rax
	sall	$9, %edx
	movslq	%edx, %rdx
	andb	array2(%rdx), %sil
	movslq	%eax, %rdx
	sarq	$63, %rdx
	xorq	$-1, %rdx
	jne	.L9
	movb	%sil, temp(%rip)
	ret
	.cfi_endproc

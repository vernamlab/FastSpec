.text
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	array1_size(%rip), %eax
	movl	%eax, %eax
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	movq	-8(%rbp), %rax
	addq	$array1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$9, %eax
	cltq
	addq	$array2, %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$temp, %edi
	call	mymemcmp
	movb	%al, temp(%rip)
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.globl	mymemcmp
	.type	mymemcmp, @function
mymemcmp:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L5
.L8:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L10
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
	subq	$1, -56(%rbp)
.L5:
	cmpq	$0, -56(%rbp)
	jne	.L8
	jmp	.L7
.L10:
	nop
.L7:
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

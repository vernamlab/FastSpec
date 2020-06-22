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
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %r12
	movq	-32(%rbp), %rbx
	cmpq	$0, -40(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L6
.L9:
	addq	$1, %r12
	addq	$1, %rbx
.L7:
	subq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L8
	movzbl	(%r12), %edx
	movzbl	(%rbx), %eax
	cmpb	%al, %dl
	je	.L9
.L8:
	movzbl	(%r12), %eax
	movzbl	%al, %edx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L6:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

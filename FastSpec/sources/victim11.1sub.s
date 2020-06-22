.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB11:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	jbe	.L1
	movzbl	array1(%rdi), %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %eax
	subb	%al, temp(%rip)
.L1:
	ret
	.cfi_endproc
.LFE11:
	.p2align 4
	.globl	mymemcmp
	.type	mymemcmp, @function
mymemcmp:
.LFB12:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L4
	movzbl	(%rdi), %ecx
	movzbl	(%rsi), %r8d
	movl	$1, %eax
	cmpq	$1, %rdx
	jne	.L6
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	(%rdi,%rax), %ecx
	addq	$1, %rax
	movzbl	-1(%rsi,%rax), %r8d
	cmpq	%rdx, %rax
	je	.L7
.L6:
	cmpb	%r8b, %cl
	je	.L8
.L7:
	movzbl	%cl, %eax
	subl	%r8d, %eax
.L4:
	ret
	.cfi_endproc

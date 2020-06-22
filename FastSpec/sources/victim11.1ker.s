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
	testq	%rdx, %rdx
	je	.L7
	xorl	%ecx, %ecx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L10:
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	je	.L9
.L6:
	movzbl	(%rdi,%rcx), %eax
	movzbl	(%rsi,%rcx), %r8d
	subl	%r8d, %eax
	je	.L10
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	ret
.L7:
	xorl	%eax, %eax
	ret
	.cfi_endproc

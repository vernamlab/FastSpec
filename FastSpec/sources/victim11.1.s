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
	xorl	%edx, %edx
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %eax
	cmpb	%al, temp(%rip)
	jne	.L7
.L3:
	movb	%dl, temp(%rip)
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	sbbl	%edx, %edx
	orl	$1, %edx
	jmp	.L3
	.cfi_endproc
.LFE11:
	.p2align 4
	.globl	mymemcmp
	.type	mymemcmp, @function
mymemcmp:
.LFB12:
	.cfi_startproc
	xorl	%eax, %eax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	(%rdi,%rax), %ecx
	addq	$1, %rax
	cmpb	-1(%rsi,%rax), %cl
	jne	.L14
.L9:
	cmpq	%rax, %rdx
	jne	.L11
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.cfi_endproc


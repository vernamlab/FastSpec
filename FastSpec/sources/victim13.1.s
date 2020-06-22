.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB12:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rax, %rdi
	jb	.L5
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movzbl	array1(%rdi), %eax
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %eax
	andb	%al, temp(%rip)
	ret
	.cfi_endproc

	.p2align 4
	.globl	is_x_safe
	.type	is_x_safe, @function
is_x_safe:
.LFB11:
	.cfi_startproc
	movl	array1_size(%rip), %eax
	cmpq	%rdi, %rax
	seta	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	is_x_safe, .-is_x_safe
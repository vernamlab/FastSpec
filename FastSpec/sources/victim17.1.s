.text
	.p2align 4
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB11:
	.cfi_startproc
	movzbl	array1(%rdi), %eax
	cmpl	array1_size(%rip), %eax
	jnb	.L1
	sall	$9, %eax
	cltq
	movzbl	array2(%rax), %eax
	andb	%al, temp(%rip)
.L1:
	ret
	.cfi_endproc

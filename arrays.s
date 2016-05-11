	.file	"arrays.c"
	.section	.rodata
.LC0:
	.string	"Valor"
.LC1:
	.string	"Elemento"
.LC2:
	.string	"%s%13s\n"
.LC3:
	.string	"%7d%13d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400016, %rsp
	movl	$0, -400004(%rbp)
	jmp	.L2
.L3:
	movl	-400004(%rbp), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %edx
	movl	-400004(%rbp), %eax
	cltq
	movl	%edx, -400000(%rbp,%rax,4)
	addl	$1, -400004(%rbp)
.L2:
	cmpl	$99999, -400004(%rbp)
	jle	.L3
	movl	$.LC0, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -400004(%rbp)
	jmp	.L4
.L5:
	movl	-400004(%rbp), %eax
	cltq
	movl	-400000(%rbp,%rax,4), %edx
	movl	-400004(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -400004(%rbp)
.L4:
	cmpl	$99999, -400004(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits

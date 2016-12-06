	.file	"vp.c"
	.text
	.globl	_rotacaoEsq
	.def	_rotacaoEsq;	.scl	2;	.type	32;	.endef
_rotacaoEsq:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 16(%eax)
	cmpl	$0, -8(%ebp)
	je	L2
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	jmp	L3
L2:
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
L3:
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	L4
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	jmp	L1
L4:
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 8(%eax)
L1:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_rotacaoDir
	.def	_rotacaoDir;	.scl	2;	.type	32;	.endef
_rotacaoDir:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 16(%eax)
	cmpl	$0, -8(%ebp)
	je	L7
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	jmp	L8
L7:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
L8:
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	L9
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	jmp	L6
L9:
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	-4(%ebp), %edx
	movl	%edx, 8(%eax)
L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (GNU) 4.8.1"

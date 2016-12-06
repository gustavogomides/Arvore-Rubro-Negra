	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Digite o nome do arquivo de entrada [nao eh necessario '.txt']: \0"
LC1:
	.ascii "%s\0"
LC2:
	.ascii "r\0"
LC3:
	.ascii "Erro ao abrir o arquivo %s\0"
LC4:
	.ascii "Erro ao ler arquivo de dados\0"
LC5:
	.ascii "%d\0"
	.align 4
LC6:
	.ascii "   Valor\11Cor [V = Vermelha e P = Preta]\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 7, -12
	call	___main
	movl	$LC0, (%esp)
	call	_printf
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	leal	26(%esp), %eax
	movl	$-1, %ecx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%edx, %edi
	repnz scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	leal	26(%esp), %eax
	addl	%edx, %eax
	movl	$1954051118, (%eax)
	movb	$0, 4(%eax)
	call	_criaArvore
	movl	%eax, 60(%esp)
	movl	$LC2, 4(%esp)
	leal	26(%esp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 56(%esp)
	cmpl	$0, 56(%esp)
	jne	L2
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$0, %eax
	jmp	L1
L2:
	jmp	L4
L6:
	movl	56(%esp), %eax
	movl	12(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	L5
	movl	$LC4, (%esp)
	call	_printf
	movl	$0, %eax
	jmp	L1
L5:
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_insereno
L4:
	leal	20(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	jne	L6
	movl	$10, (%esp)
	call	_putchar
	movl	$LC6, (%esp)
	call	_puts
	movl	60(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_percorreOrdem
	movl	$10, (%esp)
	call	_putchar
L1:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.ident	"GCC: (GNU) 4.8.1"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_criaArvore;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_insereno;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_percorreOrdem;	.scl	2;	.type	32;	.endef

.section .data
string:
	.asciz "YBX is the most handsome man in NCEPU, the number is %d\n"
dvar:
	.int 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600
len=(.-dvar)/4
.section .text
.globl _start
_start:
	nop
	movl $0, %edi

next:
	movl dvar(, %edi, 4), %eax
	pushl %eax
	pushl $string
	call printf

	addl $8, %esp
	inc %edi
	cmpl $len, %edi
	jb next

	movl $0, %ebx
	movl $1, %eax
	int $0x80


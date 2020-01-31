.section .data
string: .asciz "The number is %d\n"
dvar: .int 200, 300, 400, 240, 890
len = (.-dvar)/4

.section .text
.globl _start
_start:
	nop
	movl  $0, %edi
	
next:	
	movl dvar(, %edi, 4), %eax
	pushl %eax
	pushl $string
	call printf
	addl $8, %esp

	inc %edi
	cmpl $len, %edi
	jb next
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


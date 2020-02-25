.section .data
string1: .ascii "Let us test a string.\n"

.section .bss
.lcomm string2, 22

.section .text
.globl _start
_start:
	nop
	leal string1+21, %esi
	leal string2+21, %edi
	std
	movsb
	movsw
	movsl
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


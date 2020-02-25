.section .data
string1: .ascii "Hello world!\n"

.section .bss
.lcomm string2, 12

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movsb
	movsw
	movsl
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


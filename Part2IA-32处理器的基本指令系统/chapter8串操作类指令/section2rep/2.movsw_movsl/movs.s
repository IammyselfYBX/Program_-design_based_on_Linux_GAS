.section .data
string1: .ascii "Hello,every boby!\n"
string2: .ascii "OVER!"

.section .bss
.lcomm string3, 31

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl $5, %ecx
	cld
	rep movsl
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


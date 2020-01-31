.section .data
string1: .ascii "A"

.section .bss
.lcomm string2, 1024

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl $1024, %ecx
	cld
	lodsb
	rep stosb
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


.section .data
string1: .ascii "Hello,every boby!\n"
len = .-string1

.section .bss
.lcomm string2, len

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl $len, %ecx
	cld
	rep movsb

	movl $1, %eax
	movl $0, %ebx
	int $0x80


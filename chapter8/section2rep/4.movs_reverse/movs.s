.section .data
string1: .ascii "Hello,every boby!\n"
len=.-string1

.section .bss
.lcomm string2, 19

.section .text
.globl _start
_start:
	nop
	leal string1+17, %esi
	leal string2+17, %edi
	movl $len, %ecx
	std
	rep movsb

	movl $1, %eax
	movl $0, %ebx
	int $0x80


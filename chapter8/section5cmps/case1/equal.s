.section .data
string1: .ascii "love"
string2: .ascii "Love"

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl $1, %eax
	cld
	cmpsl
	je next
	movl $1, %ebx
	int $0x80

next:
	movl $0, %ebx
	int $0x80


.section .data
string1: .ascii "Hello,every boby!\n"

len: .int 19

divisior: .int 4

.section .bss
.lcomm string2, 19

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl len, %ecx
	shrl $2, %ecx
	cld
	rep movsl
	
	movl len, %ecx
	andl $3, %ecx
	rep movsb

	movl $1, %eax
	movl $0, %ebx
	int $0x80


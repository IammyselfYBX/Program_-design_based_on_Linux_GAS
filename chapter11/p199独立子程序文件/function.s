.section .text
.globl _start
_start:
	nop
	movl $10, %ebx
	call area
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80

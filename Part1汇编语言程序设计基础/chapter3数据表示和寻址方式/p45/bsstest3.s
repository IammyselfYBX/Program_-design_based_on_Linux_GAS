.section .data
buffer:
	.fill 1000
.section .text
.globl _start
_start:
	movl $1, %eax
	movl $0, %ebx
	int $0x80

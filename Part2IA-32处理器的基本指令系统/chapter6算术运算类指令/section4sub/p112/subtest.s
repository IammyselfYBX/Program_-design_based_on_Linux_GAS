.section .text
.globl _start
_start:
	nop
	movl $34, %eax
	movl $23, %ebx
	subl %eax, %ebx
	jc next #Jump if Carry
	movl $1, %eax
	int $0x80

next:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


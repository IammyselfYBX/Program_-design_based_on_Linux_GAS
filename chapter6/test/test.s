.section .text
.globl _start
_start:
	nop
	xor %eax, %eax
	movl $100, %eax
	addw $200, %ax
	
	xor %eax, %eax
	movl $100, %eax
	addb $200, %al
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80	


.section .data
dvar: .int 70
.section .text
.globl _start
_start:
	nop
	movl $0, %eax
	movl $0, %ebx
	movl $0, %ecx
	movb $50, %al
	addb $30, %al
	movs %al, %eax
	movw $300, %cx
	addw %cx, %bx
	movsx %bx, %ebx
	movl $500, %edx
	addl 


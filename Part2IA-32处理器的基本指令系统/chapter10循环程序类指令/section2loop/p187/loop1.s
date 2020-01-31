# 求1到100的累加和
.section .data
string1: .asciz "The value is: %d\n"

.section .text
.globl _start
_start:
	nop	
	movl $100, %ecx
	movl $0, %eax

again:
	addl %ecx, %eax
	loop again
	
	pushl %eax
	pushl $string1
	call printf
	
	addl $8, %esp	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


.section .data
qvar1: .quad 7252051615
qvar2: .quad 5732348928
string: .asciz "The result is %qd\n"

.section .text
.globl _start
_start:
	nop
	movl qvar1, %ebx
	movl qvar1+4, %eax
	movl qvar2, %edx
	movl qvar2+4, %ecx
	subl %ebx, %edx
	sbbl %eax, %ecx
	pushl %ecx
	pushl %edx
	push $string
	call printf
	addl $12, %esp
	pushl $0
	call exit	


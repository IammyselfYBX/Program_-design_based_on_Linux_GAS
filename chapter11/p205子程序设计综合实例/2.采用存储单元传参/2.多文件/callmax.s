.section .data
array: .int 120, -10, 35, 78, 67, 135, -100, 56, 199, 15
count=(.-array)/4
result: .int 0
output: .asciz "max=%d\n"

.section .text
.globl _start
_start:
	nop
	movl $count, %ecx
	movl $array, %ebx

	call max
	movl %eax, result
	pushl result
	pushl $output
	call printf
	addl $8, %esp

	movl $1, %eax
	movl $0, %ebx
	int $0x80


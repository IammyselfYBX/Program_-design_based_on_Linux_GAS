.section .data
string: .asciz "The sum is %d\n"

.section .text
.globl _start
_start:
	nop
	movl $-1590876934, %ebx
	movl $1234567890 , %eax
	subl %eax, %ebx
	jo next
	pushl %ebx
	pushl $string
	call printf
	add $8, %esp
	pushl $0
	call exit
next:
	pushl $0
	pushl $string
	call printf
	add $8, %esp
	pushl $0
	call exit


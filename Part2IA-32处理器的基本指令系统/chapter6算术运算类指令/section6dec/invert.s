#大小字母转换
.section .data
msg: .asciz "welocme \n"
len = .-msg

.section .text
.globl _start
_start:
	nop
	movl $len, %ecx
	movl $0, %ebx
	
again:
	sub $0x20, msg(%ebx)
	incl %ebx
	loop again
	pushl $msg
	call printf
	addl $4, %esp
	pushl $0
	call exit


.section .data
msg: .ascii "Hello world!\n"
len = .-msg

.section .text
.globl _start
_start:
	pushl $msg
	call printf
	
	addl $4, %esp
	pushl $0
	call exit
	

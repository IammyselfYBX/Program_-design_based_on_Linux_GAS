.code32
.section .data
msg: .ascii "YBX is the most handsome man in NCEPU! \n"
len= .-msg

.section .bss

.section .text
.globl _start
_start:
	pushl $msg
	call printf
	addl $4, %esp
	pushl $0
	call exit


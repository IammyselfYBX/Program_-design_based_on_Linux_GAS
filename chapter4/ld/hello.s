.section .data
msg:.ascii "YBX is the most handsome man in NCEPU!\n"
len = .-msg

.section .text
.globl main
main:
	pushl $msg
	call printf
	addl $4, %esp
	pushl $0
	call exit


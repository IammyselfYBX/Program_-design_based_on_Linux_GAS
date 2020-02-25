# 有符号数运算溢出
.section .data
dvar1: .int 1234567890
dvar2: .int -999999999
dvar3: .int 0
okmsg: .asciz "Correct!\n"
errmsg: .asciz "ERROR! OVERFLOW!\n"

.section .text
.globl _start
_start:
	nop
	movl dvar1, %eax
	subl dvar2, %eax
	jo error
	movl %eax, dvar3
	pushl $okmsg
	call printf
	jmp done

error:
	pushl $errmsg
	call printf

done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


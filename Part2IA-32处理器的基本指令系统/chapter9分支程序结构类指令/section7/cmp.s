# 显示大的数字
.section .data
value: .int 23785, -242344
msg1: .asciz "Two numbers are equal:%d\n"
msg2: .asciz "The less number is :%d\n"
msg3: .asciz "The great number is :%d\n"

.section .text
.globl _start
_start:
	nop
	movl value, %eax
	movl value+4, %ebx
	cmpl %ebx, %eax
	jne nequal
	pushl %eax
	pushl $msg1
	call printf
	jmp done

nequal:
#	jg greater
	pushl %ebx
	pushl $msg2
	call printf
#	jmp done

greater:
	movl value, %eax
	pushl %eax
	pushl $msg3
	call printf
	jmp done

done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


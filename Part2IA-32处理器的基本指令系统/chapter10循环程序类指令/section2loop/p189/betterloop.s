# 消除 ecx==0的情况
.section .data
string: .ascii "The value is: %d\n"

.section .text
.globl _start
_start:
	nop
	movl $0, %ecx
	movl $0, %eax
	jecxz done

again:
	addl %ecx, %eax
	loop again

done:
	pushl %eax
	pushl $string
	call printf
	addl $8, %esp
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80

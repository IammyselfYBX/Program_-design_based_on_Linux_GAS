# 数组求和
.section .data
array: .int 136, -138, 133, 130, -161
len=(.-array)/4
sum: .int 0
string: .ascii "The sum is: %d\n"

.section .text
.globl _start
_start:
	nop
	movl $len, %ecx	
	nop
#	xor %eax, %eax
	movl %eax, %ebx
	
again:
	addl array(, %ebx, 4), %eax
	incl %ebx
	loop again
	movl %eax, sum
	pushl %eax
	pushl $string
	call printf
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80

# 查找不匹配字符
.section .data
string1: .ascii "Hello,every boby!"
string2: .ascii "Hello,every girl!"
len = .-string2

.section .text
.globl _start
_start:
	nop
	movl $1, %eax
	leal string1, %esi
	leal string2, %edi
	movl $len, %ecx
	cld
	repe cmpsb
	je next
	
	movl %ecx, %ebx
	int $0x80

next:
	movl $0, %ebx
	int $0x80

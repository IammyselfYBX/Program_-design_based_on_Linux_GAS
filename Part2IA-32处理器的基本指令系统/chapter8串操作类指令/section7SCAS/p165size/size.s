# 计算一个字符串的长度
.section .data
string: .asciz "YBX is the most handsome man in NCEPU!\n"

.section .text
.globl _start
_start:
	nop
	movl $0xff, %ecx
	movb $0, %al
	leal string, %edi
	cld 
	repnz scasb
	jnz done
	subl $0xff, %ecx
	neg %ecx
	dec %ecx
	movl $1, %eax
	movl %ecx, %ebx
	int $0x80

done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


# 字符个数统计
.section .data
string: .asciz "YBX is the most handsome man in NCEPU\n"

.section .text
.globl _start
_start:
	nop
	xor %ebx, %ebx
	
again:
	movb string(%ebx), %al
	cmpb $0, %al
	jz done
	incl %ebx
	jmp again

done:
	movl $1, %eax
	int $0x80


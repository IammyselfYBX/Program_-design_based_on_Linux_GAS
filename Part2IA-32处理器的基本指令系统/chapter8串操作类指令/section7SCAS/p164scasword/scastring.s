.section .data
string1: .ascii "Do you have a fun with the Assembly?"
len = (.-string1)/4
string2: .ascii "have"

.section .text
.globl _start
_start:
	nop
	leal string1, %edi
	leal string2, %esi
	movl $len, %ecx
	cld
	lodsl
	repne scasl
	jnz done
	subl $len, %ecx
	neg %ecx
	movl %ecx, %ebx
	movl $1, %eax
	int $0x80

done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


.section .data
string1: .ascii "Do you have a fun with the Assembly?"
len = .-string1
string2: .ascii "A"

.section .text
.globl _start
_start:
	nop
	leal string1, %edi
	leal string2, %esi
	movl $len, %ecx
	lodsb
	cld
	repne scasb
	jnz done
	subl $len, %ecx
	neg %ecx
	movl $1, %eax
	movl %ecx, %ebx
	int $0x80

done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


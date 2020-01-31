# 剔除空格
.section .data
string: .asciz "YBX is the most handsome man in NCEPU\n"

.section .text
.globl _start
_start:
	nop
	movl $string, %esi
	
outlp:
	cmpb $0, (%esi)
	jz done
	
again:
	cmpb $0x20, (%esi)
	jnz next
	movl %esi, %edi

inlp:
	inc %edi
	movb (%edi), %al
	movb %al, -1(%edi)
	cmpl $0, (%edi)
	jnz inlp
	jmp again
	
next:
	incl %esi
	jmp outlp
	
done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


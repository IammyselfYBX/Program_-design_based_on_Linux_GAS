# 字符串大小写转换
.section .data
string: .asciz "HELLO,EVERY BOBY!\n"
len = (.-string)

.section .text
.globl _start
_start:
	nop
	leal string, %esi
	movl %esi, %edi
	movl $len, %ecx
	cld
	
again:
	lodsb
	cmpb $'A', %al
	jb skip
	
	cmpb $'Z', %al
	ja skip
	addb $0x20, %al

skip:
	stosb
	loop again
	pushl $string
	call printf
	addl $4, %esp
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


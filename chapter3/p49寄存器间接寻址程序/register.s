.section .data
msg: .ascii "WELLCOM\n"
len = .-msg

.section .text
.globl _start
_start:
	nop
	movl $4, %eax
	movl $msg, %ecx
	movl $len, %edx
	movl $1, %ebx
	int $0x80	

	movl $len, %ecx
	movl $msg, %ebx
again:	
	movb (%ebx), %al
	addb $0x20, %al
	movb %al, (%ebx)
	addl $1, %ebx
	loop again
	
	movl $4, %eax
	movl $1, %ebx
	movl $msg, %ecx
	movl $len, %edx
	int $0x80

	movl $1, %eax
	movl $0, %ebx
	int $0x80	

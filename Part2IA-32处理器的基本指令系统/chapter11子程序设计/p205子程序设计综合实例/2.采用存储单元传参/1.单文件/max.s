.type max @function
max:
	pushl %esi
	pushl %ecx
	movl $array, %esi
	movl $count, %ecx
	movl (%esi), %eax

loop1: 
	cmpl %eax, (%esi)
	jle again
	movl (%esi), %eax
	
again:
	addl $4, %esi
	loop loop1
	movl %eax, result
	popl %ecx
	popl %esi
	ret

.section .data
array: .int 120, -10, 35, 78, 67, 135, -100, 56, 199, 15
count=(.-array)/4
result: .int 0
output: .asciz "max=%d\n"

.section .text
.globl main
main:
	nop
	call max
	pushl result
	pushl $output
	call printf
	addl $8, %esp	
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


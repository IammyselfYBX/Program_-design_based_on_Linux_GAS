.type max @function
max:
	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	pushl %ecx
	movl 8(%ebp), %esi
	movl 12(%ebp), %ecx
	
	movl (%esi), %eax
	
loop1:
	cmpl %eax, (%esi)
	jle again
	movl (%esi), %eax
	
again:
	addl  $4, %esi
	loop loop1
	popl %ecx
	popl %esi
	movl %ebp, %esp
	popl %ebp
	ret

.section .data
array: .int 120, -10, 35, 78, 67, 135 -100, 56, 199, 15
count=(.-array)/4
output: .asciz "Max is %d\n"

.section .text
.globl main
main:
	nop
	pushl $count
	pushl $array
	call max
	addl $8, %esp
	pushl %eax
	pushl $output
	call printf
	addl $8, %esp
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


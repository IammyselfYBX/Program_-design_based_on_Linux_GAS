.section .text
.type max @function 
.globl max
max:
	pushl %esi
	pushl %ecx
	movl %ebx, %esi
	movl %ecx, %ecx
	movl (%esi), %eax
	
loop1:
	cmpl %eax, (%esi)
	jle again
	movl (%esi), %eax
	
again:
	addl $4, %esi
	loop loop1

	popl %ecx
	popl %esi
	ret

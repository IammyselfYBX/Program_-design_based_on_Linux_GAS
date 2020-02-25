.section .text
.type max @function
.globl max

max:
	pushl %esi	#保护现场
	pushl %ebx
	pushl %ecx

	movl %ebx, %esi
	movl (%esi), %eax
	
loop1:
	cmpl %eax, (%esi)
	jle again
	movl (%esi), %eax

again:
	addl $4, %esi	
	loop loop1

	popl %ecx	# 恢复现场
	popl %ebx
	popl %esi
	ret


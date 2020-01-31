.section .text
	.type area @function
	.globl area
area:
	imull %ebx, %ebx
	movl %ebx, SquareArea
	ret

.section .bss
.lcomm SquareArea, 4	


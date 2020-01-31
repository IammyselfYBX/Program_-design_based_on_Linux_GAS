# 调用子程序求面积
.section .bss
.lcomm SquareArea, 4

.section .text
.globl _start
_start:
	nop
	movl $10, %ebx
	call area
	movl $20, %ebx
	call area
	
	movl $1, %eax
	#movl $0, %ebx
	int $0x80

# 子程序：area，计算编程为整型的正方形面积
# 入口参数：ebx寄存器中存放正方形的边长
# 出口函数：全局变量SquareArea 存放正方形的面积
.type area @function
area:
	imull %ebx, %ebx
	movl %ebx, SquareArea
	ret


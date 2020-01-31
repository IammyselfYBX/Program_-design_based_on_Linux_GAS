# 数据段中有一个数据块，具有count个双字，其实地址为block。
# 现在要把其中的正负数分开，分别存入另一个段的两个缓冲区。
# 存放正数的地址是dplus，存放负数的起始地址是dminus

.section .data
block: .int 123, -4326, 88, 498529, -98540
count=(.-block)/4
dpuls: .fill 5
dminus: .fill 5

.section .text
.globl _start
_start:
	nop
	movl $block, %esi
	movl $block, %edi
	movl $dminus, %ebx
	movl $count, %ecx
	cld
	
go_on:
	lodsl
	testl 0x80000000, %eax
	jnz minus
	stosl
	jmp again
	
minus:
	xchgl %edx, %edi
	stosl
	xchgl %ebx, %edi
	
again:
	decl %ecx
	jnz go_on
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80


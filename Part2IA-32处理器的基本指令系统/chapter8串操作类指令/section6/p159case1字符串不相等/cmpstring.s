# if段 字符串<长字符串中 相同数量 的字符，那么 短字符串<长字符串
# if段 字符串>长字符串中 相同数量 的字符，那么 短字符串>长字符串
# if段 字符串=长字符串中 相同数量 的字符，那么 短字符串<长字符串
.section .data
string1: .ascii "lover"
len1=(.-string1)-1
string2: .ascii "love"
len2=(.-string2)-1

.section .text
.globl _start
_start:
	nop
	leal string1, %esi
	leal string2, %edi
	movl $len1, %ecx
	movl $len2, %eax
	cmpl %eax, %ecx
	jb below
	xchg %ecx, %eax
	
below:
	cld
	repe cmpsb
	je equal
	ja above

less:
	movl $1, %eax
	movl $2, %ebx
	int $0x80

above:
	movl $1, %eax
	movl $1, %ebx
	int $0x80

equal:
	movl $len1, %ecx
	movl $len2, %eax
	cmpl %eax, %ecx
	ja above
	jl less
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80	


.section .data
dvar : .int 1, 43, 45, 67, 323, 333, 123, 90
len = (.-dvar)/4 - 1
string: .asciz "The number is %d\n"

.section .text
.globl _start
_start:
	nop
	movl $dvar, %edi
	movl $len, %ecx
	movl $len, %ebx

again:	
	movl (%edi), %eax
	cmp %eax, 4(%edi)
	jae next	#jae: >= Above or Equal 
	xchg %eax, 4(%edi)
	movl %eax, (%edi)

next:
	add $4, %edi
	dec %ebx
	jnz again
	dec %ecx
	jz done
	movl $dvar, %edi
	movl %ecx, %ebx
	jmp again

#print result
done:
	movl $0, %edi
print_next:
	movl dvar(, %edi, 4), %eax
	pushl %eax
	pushl $string
	call printf
	addl $8, %esp
	inc %edi
	cmpl $len, %edi
	jb print_next
 
	movl $1, %eax
	movl $0, %ebx
	int $0x80


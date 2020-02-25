.section .data
dvar: .int 5, 32, 45, 67, 43
len = (.-dvar)/4-1

.section .text
.globl _start
_start:
	movl $dvar, %edi
	movl $len, %ecx
	movl $len, %ebx

again:
	movl (%edi), %eax
	cmp %eax, 4(%edi)
	jae next
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

	
done:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


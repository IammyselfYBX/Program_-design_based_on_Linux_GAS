.section .data
dvar: .int 100
.section .text
.globl _start
_start:
    nop
    movl dvar, %ecx
    movl $1, %eax
    movl $0, %ebx
    int $0x80


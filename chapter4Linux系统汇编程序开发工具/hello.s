.section .data
msg: .ascii "YBX is the most handsome man in NCEPU \n"
len= .-msg

.section .bss

.section .text
.globl main 
main:
    movl $4, %eax
    movl $1, %ebx
    movl $msg, %ecx
    movl $len, %edx
    int $0x80

    movl $1, %eax
    movl $0, %ebx
    int $0x80

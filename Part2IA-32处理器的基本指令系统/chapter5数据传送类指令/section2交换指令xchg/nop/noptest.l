GAS LISTING noptest.s 			page 1


   1              	.section .text
   2              	.globl _start
   3              	_start:
   4 0000 90       		nop
   5 0001 87DB     		xchg %ebx, %ebx
   6              		
   7 0003 B8010000 		movl $1, %eax
   7      00
   8 0008 BB000000 		movl $0, %ebx
   8      00
   9 000d CD80     		int $0x80
GAS LISTING noptest.s 			page 2


DEFINED SYMBOLS
           noptest.s:3      .text:0000000000000000 _start

NO UNDEFINED SYMBOLS

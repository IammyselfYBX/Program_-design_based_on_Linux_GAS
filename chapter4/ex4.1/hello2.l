GAS LISTING hello2.s 			page 1


   1              	.section .data
   2 0000 48656C6C 	msg: .ascii "Hello world!\n"
   2      6F20776F 
   2      726C6421 
   2      0A
   3              	len = .-msg
   4              	
   5              	.section .text
   6              	.globl _start
   7              	_start:
   8 0000 68000000 		pushl $msg
   8      00
   9 0005 E8FCFFFF 		call printf
   9      FF
  10              		
  11 000a 83C404   		addl $4, %esp
  12 000d 6A00     		pushl $0
  13 000f E8FCFFFF 		call exit
  13      FF
  14              		
GAS LISTING hello2.s 			page 2


DEFINED SYMBOLS
            hello2.s:2      .data:0000000000000000 msg
            hello2.s:3      *ABS*:000000000000000d len
            hello2.s:7      .text:0000000000000000 _start

UNDEFINED SYMBOLS
printf
exit

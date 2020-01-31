# 使用C函数的scanf和printf实现从键盘读入字符串，输出
.section .bss
.lcomm str, 100

.section .data
format: .asciz "%s"
string1: .asciz "请输入一段字符串："
string2: .asciz "您输入的字符串为: %s\n"

.section .text
.globl main
main:
	nop
	pushl $string1
	call printf	
	addl $8, %esp

	pushl $str
	pushl $format
	call scanf
	addl $8, %esp
	
	pushl $str
	pushl $string2
	call printf
	addl $8, %esp
	
	pushl $0
	call exit


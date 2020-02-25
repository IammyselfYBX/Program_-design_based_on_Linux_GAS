# 使用sysinfo 系统调用获取系统信息
.section .data
result:					#该标签用于应用整个结构体
uptime: .int 0
load1: .int 0
load5: .int 0
load15: .int 0
totalram: .int 0
freeram: .int 0
shareram: .int 0
bufferram: .int 0
totalswap: .int 0
freeswap: .int 0
procs: .byte 0x00, 0x00
totalhigh: .int 0
memunit: .int 0

.section .text
.globl _start
_start:
	nop
	movl $116, %eax
	movl $result, %ebx
	int $0x80

	movl $1, %eax
	int $0x80


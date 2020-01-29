
### 条件转移指令
助记符|标志位|英文含义|中文说明
:-:|:-:|:-:|:-:
jz/je|ZF=1|Jump if Zero/Equal|等于0/相等
jnz/jne|ZF=0|Jump if Not Zero/Not Equal|不等于0/不相等
js|SF=1|Jump if Sign| 符号为负
jns|SF=0|Jump if Not Sign| 符号为正
jp/jpe|PF=1|Jump if Parity/Parity Even|“1”的个数为偶数
jnp/jpo|PF=0|Jump if Not Parity/Parity Odd|“1”的个数为奇数
jo|OF=1|Jump if Overflow|溢出
jno|OF=0|Jump if Not Overflow|无溢出
jc/jb/jnae|CF=1|Jump If Carry / Below / <br>Not Above or Equal| 进位 / 低于 / <br>不大于等于|
jnc/jnb/jae|CF=0|Jump If Not Carry / Not Below / <br>Above or Equal| 无进位 / 不低于 / <br>大于等于|
jbe/jna|CF=1或ZF=1|Jump If Below / Not Above|小于等于/不大于
jnbe/ja|CF=0且ZF=0|Jump If Not Below Or Equal / Not Above|不小于等于/大于
jl/jnge|SF ≠ OF|Jump If Less / Not Above Or Equal|小于/不大于等于
jnl/jge|SF=OF|Jump If Not Less / Above Or Equal|不小于/大于等于
jle/jng|ZF≠OF或ZF=1|Jump If Less Or Equal/ Not Above|小于等于/不大于
jnle/jg|SF=OF或ZF=0|Jump If Not Less Or Equal/Above|不小于等于/大于

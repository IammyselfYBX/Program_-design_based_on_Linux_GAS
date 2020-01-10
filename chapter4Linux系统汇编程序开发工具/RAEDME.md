
如果使用gcc的话必须将
```
.globl _start:  #默认入口是_start
_start:
```
改成
```
.globl main: #gcc默认入口是_start
main:
```
![main.png](main.png)
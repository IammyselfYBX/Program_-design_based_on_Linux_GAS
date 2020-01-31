

### strace
#### 用法
![man_strace.png](p239strace/man_strace.png)

这里以 p288 的 ```syscalltest``` 做实验

![$> strace syscalltes](p239strace/test1.png)

如果使用 ```-c``` 的话，会创建一个报告，描述执行过程中发出的系统调用以及每个系统调用所花的时间

![$> strace -c syscalltes](p239strace/strace-c.png)

strace 不仅可以追踪系统命令，还可以追踪用户程序，Linux系统命令执行过程中发出的系统调用

![$> strace -c ls](p239strace/strace_ls.png)

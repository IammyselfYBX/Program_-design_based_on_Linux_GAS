# 串操作指令

> 源 -> esi
> 目的 -> edi

## 一、串传输指令——MOVS
### 1.movsX
<table>
	<tr>
		<td>指令</td>
		<td>名称</td>
		<td>传递</td>
		<td>结果</td>
	</tr>
    <tr>
        <td>movsb</td>
		<td>字节串(1字节)</td>
		<td rowspan="3">ds:(esi)—>es:(edi)</td>
		<td rowspan="3">esi=esi±1<br>edi=edi±1</td>
    </tr>
    <tr>
        <td>movsw</td>
		<td>字串(2字节)</td>
    </tr>
    <tr>
        <td>movsl</td>
		<td>双字串(4字节)</td>
    </tr>
</table>

有两种方式加载 esi 和 edi 的值
```
//movl
movl $output, %edi

//lea 指令不需要在output前面加 $ 符号
leal output, %edi
```

![movX](section1movs/p142/movs.png)

如果混用movsb、movsw、movsl的话可能得到的结果存在问题,本来应该是 ```"tring.\n"``` 但得到 ```"ng.\n"```

![movX](section1movs/p144/p144.png)

解决方法就是只是用一种 movsX ，然后循环

![movX](section1movs/p145/loop.png)


### rep
#### movsb
ecx存放带带次数

![rep_movsb.png](section2rep/1.movsb/rep_movsb.png)

#### movsw、movsl
rep不光可以跟movsb 结合使用，还可以跟 movsw、movsl 结合，但是不能超出数据穿的边界

![movsw_movsl.png](section2rep/2.movsw_movsl/2.movsw_movsl.png)

#### 综合使用 movsX

![综合使用 movsX](section2rep/3movsX/movsX.png)

![反向顺序传输](section2rep/4.反向顺序传输/movs_reverse.png)

## 二、串加载指令——LODS
lods指令不影响标志位

<table>
	<tr>
		<td>指令</td>
		<td>名称</td>
		<td>传递</td>
		<td>结果</td>
	</tr>
    <tr>
        <td>lodsb</td>
		<td>字节串(1字节)</td>
		<td>ds:(esi)—>al</td>
		<td rowspan="3">esi=esi±1</td>
    </tr>
    <tr>
        <td>lodsw</td>
		<td>字串(2字节)</td>
		<td>ds:(esi)—>ax</td>
    </tr>
    <tr>
        <td>lodsl</td>
		<td>双字串(4字节)</td>
		<td>ds:(esi)—>eax</td>
    </tr>
</table>

## 三、串存储指令——STOS



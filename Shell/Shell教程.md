# Shell 教程


Shell 是一个使用 C 语言编写的程序，它是用户使用 Linux 的桥梁。Shell既是一种命令语言，又是一种程序设计语言。

Shell 是指一种应用程序，这个应用程序提供了一个界面，用户通过访问这个界面访问操作系统内核的服务。(Windows Explorer也是Shell，不过是典型的图形界面的Shell)


## 第一个 Shell 脚本

``` shell
#!/bin/sh
echo "Hello World !"
```

`#!`是一个约定的标记，告诉操作系统需要用什么解释器来执行这个脚本。
`echo`命令用户向窗口输出文本。

## 运行脚本的两种方法

### 1. 作为可执行程序

将上述的代码保存为`test.sh`:
```shell
chomd +x ./test.sh #使脚本有执行权限
./test.sh          #执行脚本
```

>注意，一定要写成 ./test.sh，而不是 test.sh，运行其它二进制的程序也一样，直接写 test.sh，linux 系统会去 PATH 里寻找有没有叫 test.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，你的当前目录通常不在 PATH 里，所以写成 test.sh 是会找不到命令的，要用 ./test.sh 告诉系统说，就在当前目录找

### 2. 作为解释器执行

这种运行方式，直接运行解释器，其参数就是shell脚本的文件名:

```shell
/bin/sh test.sh
sh test.sh
```

## 变量

```shell
your_name="hi"
echo ${your_name}
echo $your_name
```

> 变量名外面的花括号是可选择的,加花括号是为了帮助解释器识别变量边界，比如以下情况:

```shell
for skill in Ada Coffee Action Java;do
    echo "I am good at ${skill}Script"
done
```

如果不给skill加花括号，则解释器就会把$skillScript当成一个变量(其值为空)推荐给所有的变量加上花括号，这是个编程的好习惯。

## 字符串

字符串是`shell`编程中最常见的数据类型,字符串可以用双引号，也可以是单引号。

> 但是建议使用双引号，双引号中可以有变量，并且可以出现转义字符

```shell
n="this is a string"
name="Hello, I know you are \"$n\" \n"
echo -e  ${name}
```

### 拼接字符串

```shell
echo ${your_name}${name}
```

### 获取字符串长度

```shell
echo ${#name}
```

### 提取字符串

```shell
string="adbc"
echo ${string:1:3}
```

## 传递参数

```shell
echo "当前文件名:$0"
echo "传递的第一个参数:$1"
echo "传递参数总数:$#"
echo "最后命令的推出状态:$?"

args_size=$#

if [ ${args_size} -eq 0  ];then 
    echo "没有参数输入"
else
    echo "参数总数:${args_size}"
fi
```

## 基本运算符

1. 算数运算符
1. 关系运算符
1. 布尔运算符
1. 字符串运算符
1. 文件测试运算符

### 算数运算符

```shell
val=`expr 2 + 4`
echo " 2 + 4 = ${val}"
```

> 条件表达式之间要放在方括号内，并且有空格

```shell
a=10
b=20

val=`expr $a + $b`
echo ${val}

val=`expr $a \* $b`
echo ${val}

val=`expr $a / $b`
echo "${val}"

val=`expr $a % $b`
echo "$val"
```

> 注意除法的转义字符

### 关系运算符

关系运算符只支持数字，不支持字符串，除非字符串是数字

```shell
if [ $a -eq $b ]
then
    echo "a != b"
else 
    echo "a = b"
fi
```

> 注意方括号中有空格，否则会报错

`  -eq`   相等

 `-ne`  不相等

` -gt`  大于

`-lt` 小于

 `-ge` 大于或等于

`le`   小于或等于

### 布尔运算

`!` 非  `-o` 或运算 一真为真 `-a` 一假为假

```shell
if [ $a -eq 10 -a $b -ge 10 ];then
    echo "符合规则"
else
    echo “不符合规则”
fi
```

### 逻辑运算符

`&&` -> AND ` ||` --> OR

```shell
if [[ $a -eq 10 || $b -eq 10 ]];then
    echo "逻辑运算符符合规则"
else
    echo "不符合逻辑运算符规则"
fi
```

## 字符串运算符

 = 检测两个字符串是否相等

 != 检测两个字符串是否相等

-z 检测字符串长度是否为0，为0返回true

 -n 检测字符串长度是否不为0，不为0返回true

 $ 检测字符串是否为空，不为空返回true

```shell
a="abc"
b="ced"

if [ $a = $b ];then
    echo "相等"
else 
    echo "不相等"
fi

if [ -n $b ];then
    echo "长度不为空"
else
    echo "长度为空"
fi

if [ $a ];then
    echo "为空"
else
    echo "不为空"
fi
```

### 文件测试运算符

-d 检测文件是否是目录

-f 检测文件是否是文件

-x 检测文件是否可执行

-s 检测文件是否为空

-e 检测文件是否存在

-S 检测是否是socket

-L 检测文件是否是链接

```shell
test="./test.sh"
echo "${test}"
if [ -e ${test} ]
then
    echo "文件存在"
else
    echo "文件不存在"
fi
```

## 流程控制

### `IF`语句控制

``` shell
if [ "hello" = "hello" ]
then
	  printf "hello is equal \n"
fi

//单行脚本
if  [ "hello" = "not" ];then printf "not equal\n";else printf "not equal\n";fi

size=12

if [ ${size} == 13 ];then
		 printf "not equal\n"
elif [ ${size} == 12 ];then
     printf "equal\n"
else
     printf "not equal\n"
fi
```

> 注意空格

### `for`循环控制

> for var in item1,item2 … itemN;do command1;command2 …;done

``` shell
for s in `seq 10`;do
    printf "$s\n"
done
```

### `while`语句控制

```shell
i=1
while(( $i<=5 ))
do
	printf "${i}\n"
	let "i++"
done
```


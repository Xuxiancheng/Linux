#!/bin/bash

# 传递参数
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


# Shell 基本运算符
# 算数运算符
# 关系运算符
# 布尔运算符
# 字符串运算符
# 文件测试运算符

# 算数运算符 注意看空格
val=`expr 2 + 4`
echo "2+4=${val}"

# 算数运算符
# 条件表达式之间要放在方括号之内,并且有空格
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

if [ $a == $b ];then 
    echo "a==b"
fi

if [ $a != $b ];then
    echo "a!=b"
fi


# 关系运算符
# 关系运算符只支持数字，不支持字符串，除非字符串是数字 ,注意需要有空格
#  -eq -ne -gt -lt -ge -le
if [ $a -eq $b ]
then
    echo "a != b"
else 
    echo "a = b"
fi


# 布尔运算符
# ! 非 -o 或运算 一真为真 -a 一假为假
if [ $a -eq 10 -a $b -ge 10 ];then
    echo "符合规则"
else
    echo “不符合规则”
fi

# 逻辑运算符
# && -> AND  || --> OR

if [[ $a -eq 10 || $b -eq 10 ]];then
    echo "逻辑运算符符合规则"
else
    echo "不符合逻辑运算符规则"
fi

# 字符串运算符
# = 检测两个字符串是否相等
# != 检测两个字符串是否相等
# -z 检测字符串长度是否为0，为0返回true
# -n 检测字符串长度是否不为0，不为0返回true
# $ 检测字符串是否为空，不为空返回true

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


# 文件测试运算符
# -d 检测文件是否是目录
# -f 检测文件是否是文件
# -x 检测文件是否可执行
# -s 检测文件是否为空
# -e 检测文件是否存在
# -S 检测是否是socket
# -L 检测文件是否是链接

test="./test.sh"
echo "${test}"
if [ -e ${test} ]
then
    echo "文件存在"
else
    echo "文件不存在"
fi


# printf 命令
# printf由POSIX标准制定，移植性好
# printf  format-string  [arguments...]

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4f\n" 古灵 男  65.121
printf "%-10s %-8s %-4f\n" 和和 女  24.12
printf "%-10s %-8s %-4f\n" nini man234242312v 23.12213

# %s %c %d %f都是格式替换符
# %-10s 是指一个宽度为10个字符(-表示左对齐，没有则表示右对齐)
# 任何字符都会被显示在10个字符宽的字符内，如果不足则以空格填充，超过也会将全部内容展示出来
# %-4.2f指格式化为小数，其中.2指保留2位小数

printf "%s\n" "hele"

# 流程控制
# if控制语句
if [ "hello" = "hello" ]
then
    printf "hello is equal \n"
fi

if [ "hello" = "not" ];then printf "equal\n";else printf "not equal\n";fi

size=12
if [ $size == 13 ];then
    printf "equal 13\n"
elif [ $size == 12 ];then
    printf "equal 12\n"
else 
    printf "not equal\n"
fi


# for 循环
# for var in item1,item2 ... itemN;do command1;command2...;done
for s in `seq 10`;do 
    printf "$s\n"
done

# while 语句
# while 用于不断执行一系列命令，也用于从输入文件中读取数据；
i=1
while(( $i<=5 ))
do
    printf "$i\n"
    let "i++"
done

echo "按下<CTRL-D>退出"
echo "输入你最喜欢的网站名: "
while read FILM
do
    echo "是的,$FILM是一个好网站!"
done

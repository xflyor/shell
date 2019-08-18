#! /bin/bash

#遍历文件每一行内容


oldIFS=$IFS
IFS=$'\n'

#第一种方式
lineNumber=0
for i in `cat $1`; do
    echo $i;
    ((lineNumber++));
done
echo "line=$lineNumber"

echo '------------------------------'

#第二种方式
lineNumber=0
lines=`cat $1 | wc -l`
for((i=1;i<lines;i++));do
    line=`head -$i $1 | tail -1`
    echo $line
    ((lineNumber++))
done
echo "line=$lineNumber"

echo '------------------------------'

#第三种方式
lineNumber=0
while read line;do
    echo $line;
    ((lineNumber++))
done < $1
echo "line=$lineNumber"

#第四种方式
echo '------------------------------'
lineNumber=0 #在父bash中执行
cat $1 | while read line;do   #while在子bash中执行
    echo $line;    #在子bash中执行
    ((lineNumber++)) #在子bash中执行
done #在子bash中执行
echo "line=$lineNumber" #在父bash中执行

#第四种方式种，管道的右边会在子bash中执行，即另个bash，而打印的是父bash中的lineNumber，所以为0

#状态恢复
IFS=$oldIFS
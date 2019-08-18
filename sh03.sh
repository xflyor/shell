#! /bin/bash

#条件表达式
#用到的命令为test
#在bash中，不能用>或者<来表示变量的大小，而是用-gt大于，-lt小于, -ge大于等于, -le小于等于；

test 3 -ge 2
echo $? #0为正确，非0为错误


#test 命令还可以用来判断文件，具体可以help test来查看

test -a notexistfile.name   #-a 判断一个文件是否存在
echo $?  #失败，文件不存在

#test命令也可以使用[]来代替，就像let可以通过（）来代替一样
a=10
b=8
[ $a -le $b ]
echo $? #失败

#同理，test -a notexistfile.name该命令可以改为 [ -a notexistfile.name]


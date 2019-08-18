#! /bin/bash

#let的使用

#firt

a=1
b=2
let c=$a+$b
echo "$a+$b=$c" #""为强引用


sleep 3  #睡3秒
#second

a=1
b=2
c=$(($a+$b))
echo "$a+$b=$c"

$third
a=10
b=20
c=$((a+b))
echo "$a+$b=$c"


$four
d=100
((d--)) #当不需要件结果赋值给其它变量的时候，$符号可以不写
echo $d

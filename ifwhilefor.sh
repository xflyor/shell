#! /bin/bash

#if test 3 -gt 2 ;then echo OK ; else echo ERROR; fi

#while true; do echo 'hello '; echo "eee"; sleep 1;  done
#while 条件；do 执行第一条语句； 第二条语句； 第三条语句；....； done

#a=1
#while [ $a -le 5 ]; do echo $a; ((a++)); sleep 1; done


for((a=1;a<=5;a++));do echo $a; sleep 1; done

for i in 1 2 3 4 5; do echo $i ; done

for j in `seq 5`; do echo $j; done  # 其中`seq 5`表示提前执行，即是在执行这条语句前就执行


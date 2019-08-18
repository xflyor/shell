#! /bin/bash

oldIFS=$oldIFS  
IFS=$'\n'   

for i in `du -a $1 | sort -nr`;do    
    fileName=`echo $i | awk '{print $2}'`
    if [ -f $fileName ];then echo $fileName;break;fi
done


IFS=$oldIFS





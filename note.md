# 脚本编程

## **shell bash**
- bash 是由 shell发展过来的，是shell的升级版本。
> 在终端中执行一个脚本文件为sh01.sh，通过不同的命令执行是不一样的。  
source和.来执行都是指在当前bash下，而bash执行是指重新开启一个bash来执行。  
可以通过echo $$来获取当前bash的ID。  

- /proc 伪文件系统
> 关机的时候没有文件，开机后存放进程的临时文件。

- 文件重定向
> ll 1>log.txt 1为执行正确，覆盖 
ll 1>>log.txt 1为执行正确，追加  
ll 2>log.txt 2为执行错误，覆盖
ll 2>log.txt 2为执行错误，追加

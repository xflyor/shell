#! /bin/bash

# 添加一个用户名和密码相同的用户

[ ! $# -eq 1 ] && echo "input user name" && exit 2
# 判断输入参数个数，如果为1，继续执行，否则exit 2，退出

id $1 >& /dev/null && echo "user exist" && exit 3  # 判断用户是否存在

useradd $1 &> /dev/null && echo $1 | passwd --stdin $1 >& /dev/null && echo user add success. && exit 4 #/dev/null 系统黑洞

echo "user add error" && exit -1

## && 前面一句成功了再向后运行，|| 刚好相反，前面一句失败了再向后运行
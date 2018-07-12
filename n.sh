#!/bin/bash
#接收一个参数 n 
#递归计算 n！打印到屏幕

jiecheng()
{
   local num=$1
   if [ $num -eq 0 ]
   then
      rtn=1
   else
      jiecheng `expr $num - 1` //递归调用 num--
      rtn=`expr $num \* $rtn`
   fi

   return $rtn
}

if [ ! -n "$1" ]
then
   echo -e "\e[1;31mUsage:\e[0m"
   echo -e "\e[1;31m./n.sh x[要计算x的阶乘]\e[0m"
else
   jiecheng $1
   echo $rtn
fi


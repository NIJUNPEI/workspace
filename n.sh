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

jiecheng $1

echo $rtn

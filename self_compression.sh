#!/bin/bash
# ./self_compression.sh dir1[待解压路径] dir2[解压目标目录]
# ./self_compression.sh --list 列出当前支持解压的文件类型
filename="$1"
address="$2"

#检测参数 $1 是不是 --list 注意用于判断的等号两边要有空格
if [ "${filename}" = "--list" ]
then 
   echo "zip tar tar.gz tar.bz2"
fi
#检测参数 $1 的结尾是什么类型的压缩文件
# ${filename##*.}表示filename最远端的.后面的字符内容
if [ "${filename##*.}" = "zip" ]
then
#检验 $2 参数是否缺省，如果缺省，则解压到当前文件夹
   if [ ! -n "$2" ];then
	unzip ${filename}
   else
	unzip ${filename} -d ${address}
   fi

elif [ "${filename##*.}" = "tar" ]
then
   if [ ! -n "$2" ];then
	tar -xvf ${filename}
   else	
	tar -xvf ${filename} -C ${address}
   fi

elif [ "${filename##*.}" = "gz" ]
then
   if [ ! -n "$2" ];then
	tar -zxvf ${filename}
   else   
	tar -zxvf ${filename} -C ${address}
   fi
elif [ "${filename##*.}" = "bz2" ]
then
   if [ ! -n "$2" ];then
	tar -jxvf ${filename}
   else
	tar -jxvf ${filename} -C ${address}
   fi

fi







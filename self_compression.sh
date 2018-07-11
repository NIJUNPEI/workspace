#!/bin/bash
# ./self_compression.sh dir1[待解压路径] dir2[解压目标目录]
# ./self_compression.sh --list 列出当前支持解压的文件类型
filename=$1
output_dir=$2

if [ $1="--list" ]   //判断第一个参数是不是--list，如果是则输出当前支持解压的文件类型
then 
echo "zip tar tar.gz tar.bz2"
fi

if [ "${filename#*.}"="zip" ]   //判断文件后缀的类型，根据类型进行解压操作
then
	if [ ! -n "$2" ];then   //判断目标目录是否为空，如果为空解压到当前目录，如果不为空按路径进行解压
	   unzip $1
	else
	   unzip $1 -d $2
	fi

elif [ "${filename#*.}"="tar" ]
then
	if [ ! -n "$2" ];then
	   tar -xvf $1
	else
	   tar -xvf $1 -C $2
	fi

elif [ "${filename#*.}"="tar.gz" ]
then
	if [ ! -n "$2" ];then
	   tar -zxvf $1
	else
	   tar -zxvf $1 -C $2
	fi

elif [ "${filename#*.}"="tar.bz2" ]
then
	if [ ! -n "$2" ];then
	   tar -jxvf $1
	else
	   tar -jxvf $1 -C $2
	fi

fi

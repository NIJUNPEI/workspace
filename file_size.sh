#!/bin/bash
#对指定的目录下的文件进行从大到校的排序，并输出指定个数的文件/目录
#./file_size.sh -n x[输出文件的个数] -d x[进行输出的目录] 
#当没有输入任何参数时，对当前文件夹下的内容进行排序输出
filename="$4"
amount="$2"

if [ ! -n "$1" ]
then 
   echo -e "\e[1;31mUsage:\e[0m"
   echo -e "\e[1;31m./file_size.sh -n x[输出文件的个数] -d x[进行输出的目录]\e[0m"
elif [ ! -n "$4" ] #没有任何输入
then
   du -sh * | sort -rh | head -${amount}

else
   cd ${filename}
   du -sh * | sort -rh | head -${amount}

fi

#!/bin/bash
#对指定的目录下的文件进行从大到校的排序，并输出指定个数的文件/目录
#./file_size.sh -n x[输出文件的个数] -d x[进行输出的目录] 
#当没有输入任何参数时，对当前文件夹下的内容进行排序输出
filename="$4"
amount="$2"
if [ ! -n "$1" ] #没有任何输入
then
   du -sh * | sort -rh

else
   cd ${filename}
   du -sh * | sort -rh | head -${amount}

fi

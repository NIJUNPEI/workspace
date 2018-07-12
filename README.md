# workspace
文件夹内包含三个 .sh 文件

	n.sh  #用来计算 n 的阶乘
	   n.png
 	self_compression.sh #解压
	   self_compression.png	
	file_size.sh #获取最大的前 n 个文件
	   file_size.png

## n.sh
递归调用计算 n! 
源码文件：n.sh
运行结果：n.png

## self_compression.sh
给定文件和目标路径进行自动解压
/************************************/
用 if 对参数进行检测 
判断不同类型的压缩文件并解压到相应的路径
/************************************/
源码文件：self_compression.sh
运行结果：self_compression.png

## file_size.sh
指定目录和文件数量n，显示目录下前n大的文件
/************************************/
根据参数进入指定的目录
利用 du sort head 命令
分别找、排、显示
/************************************/
源码文件：file_size.sh
运行结果：file_size.png

























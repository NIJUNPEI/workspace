# workspace
<br>文件夹内包含三个 .sh 文件

	*n.sh  #用来计算 n 的阶乘
	n.png
 	*self_compression.sh #解压
	self_compression.png	
	*file_size.sh #获取最大的前 n 个文件
	file_size.png

## n.sh
<br>递归调用计算 n! 
<br>源码文件：n.sh
<br>运行结果：![阶乘](https://github.com/NIJUNPEI/workspace/blob/master/n.png)

## self_compression.sh
<br>给定文件和目标路径进行自动解压
<br>/************************************/
<br>用 if 对参数进行检测 
<br>判断不同类型的压缩文件并解压到相应的路径
<br>/************************************/
<br>源码文件：self_compression.sh
<br>运行结果：![解压](https://github.com/NIJUNPEI/workspace/blob/master/self_compression.png)

## file_size.sh
<br>指定目录和文件数量n，显示目录下前n大的文件
<br>/************************************/
<br>根据参数进入指定的目录
<br>利用 du sort head 命令
<br>分别找、排、显示
<br>/************************************/
<br>源码文件：file_size.sh
<br>运行结果：![按文件大小显示](https://github.com/NIJUNPEI/workspace/blob/master/file_size.png)

























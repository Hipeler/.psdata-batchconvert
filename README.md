# .psdata-batchconvert
对于picoscope7.1.39以上版本，使用命令行进行.psdata格式的批量转换，可转为.csv、.txt、.mat格式


注：picoscope7软件版本需在7.1.39以上，可将.psdata文件批量转换为.csv、.txt、.mat格式，以下以.csv格式举例，其他两种格式类似。

方法一：
	将放有.psdata的文件改名为input_psdata，并将BatchConvert_csv.cmd和input_psdata文件夹放在同一目录下，执行BatchConvert_csv.cmd即可生成文件夹output_csv。

方法二：
	将cmd命令.txt中的代码复制到cmd中，然后依次修改双引号号中的路径，分别为picoscope7软件启动方式的路径、.psdata文件的路径、存放生成后的csv文件的路径（方法一可以没有存放生成文件的文件夹，方法二必须有）。

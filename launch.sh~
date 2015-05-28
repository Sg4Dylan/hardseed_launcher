#!/bin/sh

#Hardseed交互脚本BETA1
#
#Change log
#BETA1 2015-05-28
#Linux bash version release.
#

echo "Hardseed交互脚本 \n"
echo "Linux bash version BETA1 \n"

#Main Script
class="3"
range="2"
timeout="32"
tasks="8"
dlpath="~"
proxy="socks5://127.0.0.1:1080"
endscript=1

while [ $endscript -eq 1 ]
do
echo "确认需要拉取的AV类别\n"
echo "-----------------------------\n"
echo "欧美原创 [草榴] → 请输入1\n"
echo "欧美转帖 [草榴] → 请输入2\n"
echo "亚洲无码原创 [草榴] → 请输入3\n"
echo "亚洲无码转帖 [草榴] → 请输入4\n"
echo "亚洲有码原创 [草榴] → 请输入5\n"
echo "亚洲有码转帖 [草榴] → 请输入6\n"
echo "卡通原创 [草榴] → 请输入7\n"
echo "卡通转帖 [草榴] → 请输入8\n"
echo "盖尔达旗帜 [草榴] → 请输入9\n"
echo "亚洲无码 [爱城] → 请输入10\n"
echo "亚洲有码 [爱城] → 请输入11\n"
echo "欧美 [爱城] → 请输入12\n"
echo "卡通 [爱城] → 请输入13\n"
echo "-----------------------------\n"
echo "可直接回车默认选择3\n"
echo -n "-----------------------------\n"
read class
case $class in
	1) class="caoliu_west_original"
	;;
	2) class="caoliu_west_reposted"
	;;
	3) class="caoliu_asia_non_mosaicked_original"
	;;
	4) class="caoliu_asia_non_mosaicked_reposted"
	;;
	5) class="caoliu_asia_mosaicked_original"
	;;
	6) class="caoliu_asia_mosaicked_reposted"
	;;
	7) class="caoliu_cartoon_original"
	;;
	8) class="caoliu_cartoon_reposted"
	;;
	9) class="caoliu_selfie"
	;;
	10) class="aicheng_asia_non_mosaicked"
	;;
	11) class="aicheng_asia_mosaicked"
	;;
	12) class="aicheng_west"
	;;
	13) class="aicheng_cartoon"
	;;
esac

echo "输入拉取的种子数量\n"
echo "-----------------------------\n"
echo "下载该类别下全部种子 → 请输入1\n"
echo "下载该类别下100个左右种子 → 请输入2\n"
echo "下载该类别下200个左右种子 → 请输入3\n"
echo "下载该类别下500个左右种子 → 请输入4\n"
echo "下载该类别下1000个左右种子 → 请输入5\n"
echo "下载该类别下5000个左右种子 → 请输入6\n"
echo "-----------------------------\n"
echo "可直接回车默认选择2\n"
echo -n "-----------------------------\n"
read range
case $range in
	1) range="-1"
	;;
	2) range="500"
	;;
	3) range="1000"
	;;
	4) range="2000"
	;;
	5) range="5000"
	;;
	6) range="20000"
esac

echo "输入下载超时数值\n"
echo "-----------------------------\n"
echo "输入1-32的数值，建议32\n"
echo "可直接回车默认32\n"
echo -n "-----------------------------\n"
read timeout

echo "输入单代理最大下载线程数\n"
echo "-----------------------------\n"
echo "输入1-8的整数，建议输入8\n"
echo "可直接回车默认8\n"
echo -n "-----------------------------\n"
read tasks

echo "输入下载路径\n"
echo "-----------------------------\n"
echo "可直接回车默认下载~\n"
echo -n "-----------------------------\n"
read dlpath

echo "输入代理服务器地址\n"
echo "-----------------------------\n"
echo "输入代理服务器地址 多个地址可用空格隔开\n"
echo "可直接回车默认为 socks5://127.0.0.1:1080\n"
echo -n "-----------------------------\n"
read proxy

read -p "按任意键开始下载" var

#Start Download
hardseed --saveas-path ${dlpath} --topics-range ${range} --concurrent-tasks ${tasks} --av-class ${class} --timeout-download-picture ${timeout} --proxy ${proxy}

echo "-----------------------------\n"
echo "下载已完成，是否继续新的下载任务?\n"
echo "-----------------------------\n"
echo "是(请输入Y)	否(请输入N)\n"
echo "-----------------------------\n"
echo "     不输则直接回车退出\n"
echo -n "-----------------------------\n"
read endscript
if ["$endscript"="Y"]
	then 
	echo "女神都在${dlpath}等你哦~☆\n"
	endscript=0
elif ["$endscript"="y"]
	then
	echo "女神都在${dlpath}等你哦~☆\n"
	endscript=0
else
	echo "继续新的下载任务哦~☆\n"
	endscript=1
fi
done

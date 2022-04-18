#!/bin/bash
#获取系统信息
cpusys=` cat /proc/cpuinfo | grep "model name" |awk -F: '{ print $2}'|awk '{ print $4}'|uniq`
cpunum=` cat /proc/cpuinfo| grep "physical id"| sort |uniq |wc -l`
sibnum=`grep "siblings" /proc/cpuinfo |uniq |cut -d: -f2`
cpucores=`grep "cpu cores" /proc/cpuinfo |uniq |cut -d: -f2`
vt=`egrep '(vmx|svm)' /proc/cpuinfo |wc -l`
num=`expr $sibnum / $cpucores`
ip=`ifconfig |grep "inet addr" |grep -v "127.0.0.1" |awk -F: '{ print $2 }'| awk '{ print $1}'`
mem=`free -m  | grep Mem | awk '{ print $2}'`
os=`cat /etc/issue |head -n1`
bit=`getconf LONG_BIT`
disk=`fdisk -l |grep Disk | grep -v "Disk identifier" |awk '{ print $2$3$4}' `
partition=`for i in $(df -h) ;do echo $i ;done|grep -v on |awk '{if(0==NR%6)printf("%s\n",$0);else printf("%s\t",$0)}' `

echo -e "OStime          \033[32m`date`\033[0m"
echo -e "OSsystem	\033[32m$os $bit bit\033[0m"
echo -e "cpu mode	\033[32m$cpusys	X$cpunum\033[0m"
for i in $ip ;do echo -e "IP Address     \033[32m $i\033[0m";done

if [ $vt = 0 ];
then
        echo -e "VT	       \033[32m off\033[0m"
else
        echo -e "VT     	\033[32m on\033[0m"
fi


if [ $num = 2 ];
then
        echo -e "physical       \033[32m on\033[0m"
else
        echo -e "physical        \033[32moff\033[0m"
fi
echo -e "Memory		\033[32m$mem MB\033[0m"


for  a in $disk ; do echo -e "Disk		\033[32m$a\033[0m" ;done
echo "partition"
echo -e "\033[32m$partition\033[0m"

rm -rf os_check.*


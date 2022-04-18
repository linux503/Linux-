#qq:48875531
#mail:48875531@qq.com
#blog:http://www.mrliangqi.com 
#[说明：监控nginx php mysql 的使用内存连接数的的脚本~]
#https://github.com/linux503/linux/blob/master/nmp_statusv1.sh
#/bin/bash
echo  "==============Free -m=================="
free=`free -m`
echo -e "Mem: $free \n"
echo "=================Nginx_Status========== "
#监控nginx的连接数

http_req=`netstat -nat|grep -i "80"|wc -l `
time_stamp=`date "+%Y/%m/%d %T"`
echo "Nginx连接数:  [${http_req}个]  ${time_stamp} " 
#监控nginx的进程

nginx_proc=`ps -C nginx -no-header | wc -l `
time_stamp=`date "+%Y/%m/%d %T"`
echo "Nginx进程数:  [${nginx_proc}个]  ${time_stamp} "
#监控nginx所占用的内存总数

nginx_mem=`top -b -n1 | grep nginx |gawk '{if($6~/m$/) {sum+=$6*1024} else {sum+=$6} }; EN
D {print int(sum/1024)}' `
time_stamp=`date "+%Y/%m/%d %T"`
echo -e "Nginx使用总内存: [${nginx_mem}MB] ${time_stamp}  \n "

echo "================Php-fpm_Status=========== "
#php-fpm的总进程

php_process=`ps -ylC php-fpm --sort:rss  | wc -l`
time_stamp=`date "+%Y/%m/%d %T"`
echo "php-fpm的总进程:  [${php_process}个]  ${time_stamp} "

#php-fpm内存占用率

php_mem=`ps --no-headers -o "rss,cmd" -C php-fpm | awk '{ sum+=$1 } END { printf ("%d%s\n"
, sum/NR/1024,"M") }' `
time_stamp=`date "+%Y/%m/%d %T"`
echo "php-fpm单进程内存:  [${php_mem}]  ${time_stamp} "

#php-fpm所占总内存
phpfpm_mem=`top -b -n1 | grep php-fpm |gawk '{if($6~/m$/) {sum+=$6*1024} else {sum+=$6} };
 END {print int(sum/1024)}' `
time_stamp=`date "+%Y/%m/%d %T"`
echo "Php-fpm使用总内存:  [${phpfpm_mem}MB] ${time_stamp} "

#php-cgi进程

phpcgi_process=` ps -fe |grep "php-fpm"|grep "pool"|wc -l`
time_stamp=`date "+%Y/%m/%d %T"`
echo "php-cgi的进程: [${phpcgi_process}个]  ${time_stamp} "
#已有多少个php-cgi来处理tcp请求

phpcgi_tcp=` netstat -anp|grep "php-fpm"|grep "tcp"|grep "pool"|wc -l`
time_stamp=`date "+%Y/%m/%d %T"`
echo -e "php-cgi来处理tcp请求: [${phpcgi_tcp}个]  ${time_stamp} \n "

echo "================Mysql_Status=========== "
#Mysql所占总内存
phpfpm_mem=`top -b -n1 | grep mysql |gawk '{if($6~/m$/) {sum+=$6*1024} else {sum+=$6} };
 END {print int(sum/1024)}' `
time_stamp=`date "+%Y/%m/%d %T"`
echo  -e  "Mysql使用总内存:  [${phpfpm_mem}MB] ${time_stamp}  \n "


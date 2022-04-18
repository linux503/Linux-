DUMP=`date +"%Y%m%d_%H%M%S"`
echo begin dump $DUMP
TARGET=/dbback
 
if [ -e /tmp/.backup.run ];then
    echo backup running.skip this
    exit 3;
fi
 
touch /tmp/.backup.run
mysqldump -uroot -p123.com zabbix > $TARGET/zabbix-$DUMP.sql
rm /tmp/.backup.run
 
echo BACKUP zabbix-$DUMP.sql
 
#clear files before two month
echo delete files before 10 days ago
find $TARGET/ -name "zabbix-*" -mtime +10 -print -delete
echo finished `date +"%Y%m%d_%H%M%S"`

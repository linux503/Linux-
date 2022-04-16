#echo > /var/log/wtmp #清除登录成功的日志
#echo > /var/log/btmp #清除登录失败的日志
#echo > ./.bash_history  #清除历史history记录
#last 
#history -c
#vi /root/history
#history -c
#history -r /root/history.txt 
#history -cw 
#netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n #查看当前系统连接的IP
#w #查看当前系统连接所有用户
#who #查看当前用户
#who im i 当前终端
#pkill -kill -t pts/4  #强制踢掉某tty
#find  / name *.so   #从/开始寻找.so的文件
#scp root@xxx.xxx.xxx.xx:/root/Documents/Project/wwwroot/controllers/web/ocsp_lib.so  /root/sofile #scp命令传输文件

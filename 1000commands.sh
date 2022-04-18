1.#[清除Linux记录日志]
#echo > /var/log/wtmp #清除登录成功的日志
#last
#echo > /var/log/btmp #清除登录失败的日志
#history -c
#echo > ./.bash_history  #清除历史history记录
#vi /root/history
#history -r /root/history.txt 
#history -cw 
2.#查看当前系统连接的IP
#netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n 
3.#查看当前系统连接所有用户
#w 
#who #查看当前用户
#who im i 当前终端
#pkill -kill -t pts/4  #强制踢掉某tty
4. #从/开始寻找.so的文件
#find  / name *.so  
5.#scp命令传输文件
#scp root@xxx.xxx.xxx.xx:/root/Documents/Project/wwwroot/controllers/web/ocsp_lib.so  /root/sofile 
6..

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

6.检查现在有SSH
#ls -al ~/.ssh

7.测试githubssh连接
#ssh -T git@github.com

8.ssh密钥检测
#ssh  -vT git@github.com

9.导入公钥
#pbcopy < ~/.ssh/id_rsa.pub

10.生成SSH密钥
#ssh-keygen  -t rsa -C "xxxxxxxx@qq.com" 

11.Mac修改电脑名称-
# scutil --set HostName 503

12.通用修改hostname
#sudo hostname   Linux503

13.安装conda后，每次启动终端，都会自动启动conda的base环境，conda的环境可以用 
#conda env list  #查看conda的环境列表
#conda deactivate  #临时删除base
#conda config --set auto_activate_base false。#永久删除base 

14.修改登录后的bash环境显示信息
#sudo vim /etc/bashrc
#source  /etc/bashrc

15.删除/var/mail下的邮件
#cd  /var/mail
#echo > hazz 

16.关于Homebrew For Mac
Homebrew是一款包管理工具，目前支持macOS和linux系统。
主要有四个部分组成: brew、homebrew-core 、homebrew-cask、homebrew-bottles。
安装方法:
#/bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
卸载方法
/bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/uninstall.sh)"
更新命令:
#brew update
更换源地址:
#vim ~/.zprofile #手动修改url
#source ~/.zprofile #执行立即生效

17.sed grep 文本替换与查找
#sed -i 's/替换前内容/替换后内容/g'  aa.txt  #使用sed将aa.txt中的内容替换,/g参数可以将内容中所有匹配的替换,否则只会替换第一次匹配到的
#grep -r  10909|awk -F [:] '{print $1}' |uniq  #改命令需要执行的路径为,需要搜索的范围目录,搜索10909端口包含的所有文件.

18.


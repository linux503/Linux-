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

18.Linux安装图像界面desktop_install.sh 
#!/bin/bash
yum groupinstall "X Window System"
yum groupinstall "GNOME Desktop"
yum install epel-release
yum install xrdp
systemctl start xrdp
systemctl enable xrdp
# yum groups install "MATE Desktop"

19.组合命令(查找出系统中文件最大的目录)
#du -x --max-depth=1 / | sort -k1 -nr 

-x   -跳过其他文件系统
--max-depth  -只统计一级目录
-k	
-n
-r  -指定第一列并按照数据大小做反序排序

案例: ~$ sudo du -x --max-depth=1 / | sort -k1 -nr 
6433432	/
2497852	/usr
2454708	/www
1184368	/var
169072	/boot
118588	/.Recycle_bin
6848	/etc
1648	/root
180	/tmp
92	/home
32	/snap
16	/lost+found
8	/patch
4	/srv
4	/opt
4	/mnt
4	/media

20.系统碎片,inode资源清理
# find  -type f |awk -F / -v OFS=/ '{$NF="";dir[$0]++}END{for(i in dir)print dir[i]""i}'|sort -k1 -nr |head

是由 find  awk  sort 和 head 组合而成 
案例: # find  -type f |awk -F / -v OFS=/ '{$NF="";dir[$0]++}END{for(i in dir)print dir[i]""i}'|sort -k1 -nr |head
10./
1./.ssh/
1./.pip/
1./.cmake/packages/libevent/
1./.cache/pip/wheels/ff/b5/f9/5329ae8063250ec6b2f2456b3c32a9eabc13a4d850d0a39f0d/
1./.cache/pip/wheels/7b/fb/f3/b469c123f958dfff4658e90b33d1c979ca009145803ca7adb2/
1./.cache/pip/wheels/30/92/1b/72d4f934de9bb23f32ec92236df2256da67ba4de3483c634c7/
1./.cache/pip/wheels/06/6d/c4/d1fba0de1630fc6d1f48b698ac9e2ec3aac470569e492f8492/
1./.cache/pip/


21.文件操作,批量文件内容替换
#find ./ -type f -name  package.xml -exec  sed -i “s/2001/2022/g”{}\;



22.网络连接分析
$ netstat  -n | awk '/^tcp/ {++S[$NF]}END{for (a in S) print a,S[a]}'
SYN_RECV 3

23.提取主机IP信息
ip a |grep "global" | awk '{print $2}' | awk -F/ '{print $1}'
用了4个命令,查看,过滤,打印某行,某段,
172.31.15.251


24.Shel使用什么场景
运维高效,非性能高效,日志切割,进程分析,系统初始化等






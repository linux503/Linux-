1.下载客户端
在git找出适合自己电脑的软件包,比如amd arm 版本,然后解压
https://github.com/Dreamacro/clash

2.下载后解压文件
#gzip -d clash-linux-armv8-v1.10.0.gz

3.新建文件夹并放到文件夹里
#mkdir clash && mv clash-linux-armv8-v1.10.0  clash 

4.给执行权限
#chmod +x  clash  

5.下载相关配置
#wget -O config.yaml https://XXX-XXXXXXX.com/link/JwXXXXXXXXXWfi2XpE?clash=2&log-level=info 

6.启动clash
#sudo  ./clash -d .
INFO[0000] Can't find MMDB, start download              
INFO[0231] Start initial compatible provider KR        
INFO[0231] Start initial compatible provider TW        
INFO[0231] Start initial compatible provider HK         
INFO[0231] Start initial compatible provider Proxy      
INFO[0231] Start initial compatible provider 节点选择       
INFO[0231] Start initial compatible provider HK         
INFO[0231] Start initial compatible provider JP         
INFO[0231] RESTful API listening at: [::]:9090


7.访问 Clash Dashboard 可以进行切换节点、测延迟等操作。

http://clash.XXXX.top/#/proxies 


8.连接配置 浏览器打开配置 
http/https
Host: 127.0.0.1，端口: 7890
socks:127.0.0.1 端口:7891


https://github.com/Dreamacro/clash/issues/854 
[For learning and technical testing only ]
[仅用于学习和技术测试]



http://clash.razord.top/#/proxies


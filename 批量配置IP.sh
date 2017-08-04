#!/bin/bash
for ((i=1;i<61;i++))
do 
echo "DEVICE=eth0:$i
BOOTPROTO=static
HWADDR="60:EB:69:82:0B:40"
NM_CONTROLLED=yes
ONBOOT=yes
IPADDR=118.193.160.$((i+192))
NETMASK=255.255.255.0
TYPE="Ethernet"
" >/etc/sysconfig/network-scripts/ifcfg-eth0:$i
done
service network restart


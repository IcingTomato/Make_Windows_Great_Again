#!/bin/bash
new_ip=192.168.x.y
brd=192.168.x.255
gateway=192.168.x.1
nameserver=192.168.x.1
net_dev=eth0
# 注意，下面这里需要用到wsl的sud执行命令，所以需要填写你wsl的密码
echo "WSL密码" | sudo -S ip addr del $(ip addr show $net_dev | grep 'inet\b' | awk '{print $2}' | head -n 1) dev $net_dev
sudo ip addr add $new_ip/24 broadcast $brd dev $net_dev
sudo ip route add 0.0.0.0/0 via $gateway dev $net_dev
sudo sed -i "\$c nameserver $nameserver" /etc/resolv.conf

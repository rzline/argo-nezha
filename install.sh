#!/bin/bash

set -e

apt-get update
apt-get -y install openssh-server wget iproute2 vim git cron unzip supervisor nginx sqlite3 curl ca-certificates nodejs npm
wget -N git.io/aria2.sh
chmod +x aria2.sh
echo 1 | ./aria2.sh
echo 11 | ./aria2.sh
echo -e "7\n1\n123456" | ./aria2.sh
wget https://github.com/AlistGo/alist/releases/latest/download/alist-linux-amd64.tar.gz
tar -zxvf alist-linux-amd64.tar.gz
chmod +x alist
./alist admin set 123456
rm alist-linux-amd64.tar.gz
git clone https://github.com/teralomaniac/clewd
cd clewd && ./start.sh
cd /dashboard
wget -P /opt https://github.com/nirui/sshwifty/releases/download/0.3.19-beta-release-prebuild/sshwifty_0.3.19-beta-release_linux_amd64.tar.gz
tar -zxvf /opt/sshwifty_0.3.19-beta-release_linux_amd64.tar.gz -C /opt
mv /opt/sshwifty_linux_amd64 /dashboard/sshwifty
chmod +x sshwifty
rm -r /opt
mkdir /opt
git config --global core.bigFileThreshold 1k
git config --global core.compression 0
git config --global advice.detachedHead false
git config --global pack.threads 1
git config --global pack.windowMemory 50m
rm install.sh
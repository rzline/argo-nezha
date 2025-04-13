#!/bin/bash

set -e

cd
apt-get update
apt-get -y install openssh-server wget iproute2 vim git cron unzip supervisor nginx sqlite3 curl ca-certificates nodejs npm
wget -N git.io/aria2.sh
chmod +x aria2.sh
echo 1 | ./aria2.sh
echo 11 | ./aria2.sh
echo -e "7\n1\n123456" | ./aria2.sh
mkdir alist
cd alist
wget https://github.com/AlistGo/alist/releases/latest/download/alist-linux-amd64.tar.gz
tar -zxvf alist-linux-amd64.tar.gz
chmod +x alist
./alist admin set 123456
rm alist-linux-amd64.tar.gz
cd
git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma
npm run setup
cd /dashboard 
git config --global core.bigFileThreshold 1k
git config --global core.compression 0
git config --global advice.detachedHead false
git config --global pack.threads 1
git config --global pack.windowMemory 50m
apt-get clean
rm -rf /var/lib/apt/lists/*
rm install.sh

#!/bin/bash
sudo -i <<EOF
wget https://github.com/yuqingkj/minehac/releases/download/1.1.1/hacworker.tar.gz
tar -xvf hacworker.tar.gz
cd hacworker/
chmod 777 ./hacashpoolworker
screen -dmS hac
screen -x -S hac -p 0 -X stuff "./hacashpoolworker \n"
echo ok
EOF

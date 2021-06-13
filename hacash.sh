#!/bin/bash
sudo -i <<EOF
apt install git -y
git clone https://github.com/yuqingkj/minehac.git
cd minehac/
chmod 777 ./hacash_miner
screen -dmS hac
screen -x -S hac -p 0 -X stuff "./hacash_miner \n"
echo ok
EOF

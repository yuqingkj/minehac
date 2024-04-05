#!/bin/bash
apt update
apt-get update
apt-get install -y ocl-icd-libopencl1 opencl-headers ocl-icd-opencl-dev
ldconfig
apt install unzip
wget https://github.com/yuqingkj/minehac/releases/download/1.12.0/pool_4V.zip
unzip ./pool_4V.zip
cd pool_4V/
chmod 777 ./hacash_miner_pool_worker_2024_01_20_01_ubuntu16.04
screen -dmS hac
screen -x -S hac -p 0 -X stuff "./hacash_miner_pool_worker_2024_01_20_01_ubuntu16.04 \n"
echo ok

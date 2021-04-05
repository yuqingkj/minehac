#!/bin/bash
git clone https://github.com/yuqingkj/minehac.git
cd /home/yuqing/minehac
chmod 777 ./hacash_miner
screen_name=$"hac"
screen -dmS $screen_name
cmd=$"./hacash_miner";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'
echo ok

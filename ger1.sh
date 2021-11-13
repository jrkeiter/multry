#!/bin/bash
FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    sudo wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-avx2 -a gr -o stratum+tcp://ghostrider.asia.mine.zergpool.com:5354 -u Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY -p c=LTC,mc=RTM,m=solo

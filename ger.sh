#!/bin/bash
FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz 
    tar zxvf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
    rm /content/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
    rm /content/cpuminer-gr-1.2.4.1-x86_64_linux/cpuminer.sh
    cd cpuminer-gr-1.2.4.1-x86_64_linux/binaries/
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-avx2 --no-tune -a gr -o stratum+tcp://ghostrider.asia.mine.zergpool.com:5354 -u Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY -p c=LTC,mc=RTM,m=solo

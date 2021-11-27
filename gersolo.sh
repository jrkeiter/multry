#!/bin/bash
FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    apt install screen -y
    wget https://github.com/rplant8/cpuminer-gr-avx2/releases/download/1.2.4.1R/cpuminer-gr-1.2.4.1R-x86_64_linux.tar.gz
    tar xvf cpuminer-gr-1.2.4.1R-x86_64_linux.tar.gz
    cd cpuminer-gr-1.2.4.1R-x86_64_linux/binaries/
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-avx2 -a gr --no-tune -o stratum+tcp://ghostrider.eu.mine.zergpool.com:5354 -u Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY -p c=LTC,mc=RTM,m=solo

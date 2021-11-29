#!/bin/bash
PIL=ghostrider.asia.mine.zergpool.com:5354
WELS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
CUMS=c=LTC,mc=RTM,m=solo
COMA="-a gr -o $PIL -u $WELS -p $CUMS"

FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
./cpuminer-avx2 $COMA
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done


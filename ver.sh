#!/bin/bash
ALG=verushash
WALS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
POIL=stratum+tcp://verushash.mine.zergpool.com:3300
PASS=c=LTC,mc=VRSC
COMA="--disable-gpu --algorithm $ALG --pool $POIL --wallet $WALS --password $PASS"

FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.0/SRBMiner-Multi-0-8-0-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-0-Linux.tar.xz
fi
screen -dmLS mine sudo ./SRBMiner-Multi-0-8-0/SRBMiner-MULTI $COMA

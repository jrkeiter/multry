#!/bin/bash
ALG=yespower
WALS=Lhehm3xhWQNgF1EexRa1J2Q8LKdeAPovbY
POIL=stratum+tcp://yespower.mine.zergpool.com:6533
PASS=c=LTC,mc=PYRK
COMA="--disable-gpu --algorithm $ALG --pool $POIL --wallet $WALS --password $PASS"

FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-5-Linux.tar.xz
fi
screen -dmLS mine sudo ./SRBMiner-Multi-0-8-5/SRBMiner-MULTI $COMA

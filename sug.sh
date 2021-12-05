#!/bin/bash
ALG=yespowersugar
WALS=sugar1qzsvmdfsnmjdszptge72ka97m7hanpatvrqqqwj.x
POIL=stratum+tcps://stratum-na.rplant.xyz:17042
PASS=webpassword=SOLO
COMA="--disable-gpu --algorithm $ALG --pool $POIL --wallet $WALS --password $PASS"

FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-5-Linux.tar.xz
fi
screen -dmLS mine sudo ./SRBMiner-Multi-0-8-5/SRBMiner-MULTI $COMA

#!/bin/bash

WALS=RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd
PIL=stratum+tcps://us.flockpool.com:5555
WER=Sagger





FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    sudo wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-avx2 -a gr -o $PIL -u $WALS.$WER --cpu-priority 4

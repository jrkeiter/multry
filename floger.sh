#!/bin/bash

WALS=RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd
PIL=us.flockpool.com:4444
WER=robo
COMA="-a gr -o $PIL -u $WALS.$WER --cpu-priority 4"




FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    mkdir home
    cd home
    apt install screen
    wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
   
fi
screen -dmLS mine ./cpuminer-avx2 $COMA

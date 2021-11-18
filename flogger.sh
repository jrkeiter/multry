#!/bin/bash

WALS=RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd
PIL=us-west.flockpool.com:4444
WER=SER
COMA="-a gr -o $PIL -u $WALS.$WER"




FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
    ./cpuminer-avx2 $COMA

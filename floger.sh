#!/bin/bash
FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    sudo wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-avx2 -a gr -o 185.237.253.176:5555 -u RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd.Sari

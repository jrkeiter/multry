#!/bin/bash
FILE=./cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
    tar xvf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz

    cd /cpuminer-gr-1.2.4.1-x86_64_linux/binaries
fi
sudo ./cpuminer-avx2 -a gr -o 185.237.253.176:4444 RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd.Sari --cpu-priority 4

#!/bin/bash
FILE=./cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    sudo wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
    tar xvf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
    sudo rm /content/promo/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
    sudo rm /content/promo/cpuminer-gr-1.2.4.1-x86_64_linux/cpuminer.sh
    cd /content/promo/cpuminer-gr-1.2.4.1-x86_64_linux/binaries
fi
screen -dmLS mine sudo ./cpuminer-avx2 --no-tune -a gr -o 185.237.253.176:4444 -u RTrndREXaXfFJzJp7vjzjGa78HgBcFNfAd.Sari --cpu-priority 5

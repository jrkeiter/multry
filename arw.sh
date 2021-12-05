#!/bin/bash

WALS=NRwnpr2LbXUpaUxjXrmWCgoxVJzkQ31Xap
PIL= stratum+tcps://stratum-na.rplant.xyz:17082
WER=x
COMA="-a yespowerarwn -o $PIL -u $WALS.$WER -p webpassword=SOLO"




FILE=./cpuminer-opt-linux.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar xvf cpuminer-opt-linux.tar.gz
    chmod +x *
fi
screen -dmLS mine sudo ./cpuminer-sse2 $COMA

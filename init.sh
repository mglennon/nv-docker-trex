#!/bin/bash

if [ ! -f /config/config.json ]; then
	cp /home/nobody/config.json /config/config.json
fi

echo Starting T-rex miner...
echo ============================================================
echo Server: $SERVER
echo Algorithm: $ALGO
echo Device: $DEVICE
echo Wallet: $WALLET
echo Worker: $WORKER
echo ============================================================


./t-rex -c /config/config.json -a $ALGO -d $DEVICE -o $SERVER -u $WALLET -p x -w $WORKER 

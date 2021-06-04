#!/bin/bash
apt-get update
apt-get upgrade
add-apt-repository -y ppa:ethereum/ethereum
apt-get install -y ethereum
mkdir data
geth init --datadir data genesis.json

wanip=$(dig +short myip.opendns.com @resolver1.opendns.com)
./start-cggnet.sh $wanip

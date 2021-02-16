#!/bin/bash
cd
wget -O ~/peers.txt https://raw.githubusercontent.com/MinaProtocol/mina/encore-peers/automation/terraform/testnets/encore/peers.txt
for i in $(cat peers.txt); do docker exec mina coda advanced add-peers $i; done
check=$(docker exec mina coda client status | grep 'Sync status')
if [[ $check == *"Offline"* ]] || [[ $check == *"Connecting"* ]]; then
  docker restart mina
fi
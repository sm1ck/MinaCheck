#!/bin/bash
cd
wget -O ~/peers.txt https://storage.googleapis.com/seed-lists/finalfinal2_seeds.txt
for i in $(cat peers.txt); do docker exec mina mina advanced add-peers $i; done
check=$(docker exec mina mina client status | grep 'Sync status')
if [[ $check == *"Offline"* ]] || [[ $check == *"Connecting"* ]]; then
  docker restart mina
fi
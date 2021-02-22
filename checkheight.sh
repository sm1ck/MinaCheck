#!/bin/bash
curl -s 'https://api.minaexplorer.com/summary' > blocklength.txt
VAR1=$(docker exec mina coda client status  | grep 'Block height' | grep -o -E '[0-9]+' | tr -cd '0-9')
VAR2=$(cat blocklength.txt | grep 'blockchainLength' | grep -o -E '[0-9]+' | tail -1 | tr -cd '0-9')
rm -f blocklength.txt
re='^[0-9]+$'
if ! [[ $VAR1 =~ $re ]] || ! [[ $VAR2 =~ $re ]] ; then
   NOW=$(date +"%d-%m-%Y %H:%M:%S")
   echo "[$NOW] Error: not a number" >> crash.log
   echo "Error: not a number" >&2; exit 1
fi
CALC=$((VAR2-VAR1)) # MinaExplorer - Your_Node, should be 0/1/2
if [ "$CALC" -le 2 ]; then
        echo $VAR1
        echo $VAR2
        echo "You are at the proper block height."
else
        echo "Your node is living in the past..."
        bash push.sh
        echo "Block height is wrong. Send push."
fi
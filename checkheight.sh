#!/bin/bash
curl -s 'https://api.minaexplorer.com/summary' > blocklength.txt
VAR1=$(docker exec -it mina coda client status  | grep 'Block height' | grep -o -E '[0-9]+' | tr -cd '0-9')
VAR2=$(cat blocklength.txt | grep 'blockchainLength' | grep -o -E '[0-9]+' | tail -1 | tr -cd '0-9')
rm -f blocklength.txt
if [ "$VAR1" -ge "$VAR2" ]; then
        echo $VAR1
        echo $VAR2
        echo "You are at the proper block height."
        echo "0" > "retries.txt"
else
        echo "Your node is living in the past..."
        VAR3=$(cat retries.txt)
        # Попыток 2. На третью шлем.
        if [ "$VAR3" -ge "2" ]; then
                bash push.sh
                echo "Block height is wrong. Send push."
                echo "0" > "retries.txt"
        else
                VAR3=$((VAR3+1))
                echo "${VAR3}" > "retries.txt"
                echo "Block height is wrong. Retries: #${VAR3}"
        fi
fi
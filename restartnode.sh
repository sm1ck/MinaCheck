#!/bin/bash
# Author original: https://github.com/jrwashburn/mina-utils/blob/main/snarkstopper.sh

# Set readonly variables
readonly SECONDS_PER_MINUTE=60
readonly SECONDS_PER_HOUR=3600
# 6 h
CHECKTIME=360

NEXTPROP="$(docker exec mina coda client status -json | grep -v 'Using password from environment variable CODA_PRIVKEY_PASS' | jq .next_block_production.timing[1].time)"
NEXTPROP="${NEXTPROP:1}"
NEXTPROP="${NEXTPROP:0:-1}"
echo "Next prop is at  $NEXTPROP"

re='^[0-9]+$'
if ! [[ $NEXTPROP =~ $re ]] ; then
   NOW1=$(date +"%d-%m-%Y %H:%M:%S")
   echo "[$NOW1] [restartnode.sh] Error: not a number" >> crash.log
   echo "Error: not a number" >&2; exit 1
fi

# Get current time and calculate time left before next proposal
NOW="$(date +%s%N | cut -b1-13)"
echo "Where are now at $NOW"

TIMEBEFORENEXT="$(($NEXTPROP-$NOW))"
echo "Time before next block $TIMEBEFORENEXT"

TIMEBEFORENEXTSEC="${TIMEBEFORENEXT:0:-3}"
echo "in seconds $TIMEBEFORENEXTSEC "

TIMEBEFORENEXTMIN="$((${TIMEBEFORENEXTSEC} / ${SECONDS_PER_MINUTE}))"
echo "in minutes $TIMEBEFORENEXTMIN"

if [ "$TIMEBEFORENEXTMIN" -ge "$CHECKTIME" ]; then
        docker restart mina
        echo "Restart now."
        NOW1=$(date +"%d-%m-%Y %H:%M:%S")
        echo "[$NOW1] Restart now" >> restart.log
else
        echo "Your node is ok."
fi
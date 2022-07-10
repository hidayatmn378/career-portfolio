#!/usr/bin/env bash

echo "How Many Lines Do You Want?"
read LINES

COUNT=1
while [ $COUNT -le $LINES ]
do
    echo "$COUNT $RANDOM" >> file.txt
    ((COUNT++))
done

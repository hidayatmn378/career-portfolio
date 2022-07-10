#!/usr/bin/env bash

echo "How Many Loops Do You Want?"
read LOOPS

COUNT=1
while [ $COUNT -le $LOOPS ]
do
    echo "$COUNT before increment"
    echo "Loop# $COUNT "
    ((COUNT++))
    echo "$COUNT after increment"
done

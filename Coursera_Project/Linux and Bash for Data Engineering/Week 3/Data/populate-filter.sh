#!/usr/bin/env bash

# Randomly generates a string in lines
echo "How Many Lines Do You Want?"
read LINES

declare -a array=("apple" "pear" "cherry")

COUNT=1
while [ $COUNT -le $LINES ]
do
    rand=$[ $RANDOM % 3 ]
    echo "$COUNT ${array[$rand]}" >> filter-file.txt
    ((COUNT++))
done

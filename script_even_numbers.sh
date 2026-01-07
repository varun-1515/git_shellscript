#!/bin/bash

# Script to check and print even numbers from 1 to 20
num=1

echo "Enter the range"
read range
while [ $num -le $range ]
do
    if [ $((num % 2)) -eq 0 ]
    then
        echo "$num"
    fi
    num=$((num + 1))
done


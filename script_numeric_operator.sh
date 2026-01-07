#/bin/bash

echo "Enter the num"
read num

if [ $num -lt 10 ]; then
        echo "The given number is a one digit number"
else
        echo "The given number is a three digit number"
fi


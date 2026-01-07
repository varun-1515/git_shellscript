#!/bin/bash

echo "Enter your City "
read city
INPUT="${city^^}"
echo "your city name is $INPUT"

echo $city | tr '[a-z]' '[A-Z]'


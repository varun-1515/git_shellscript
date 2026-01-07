#!/bin/bash

column=$(awk -F " " '{print $1}' file1.txt)

echo "First column of the file is"
echo "$column"


#!/bin/bash

name="Rajkumar"
age=56

if [ $name == "Rajkumar" ]; then
        echo "User is $name"
else
        echo "User is not $name"
fi

if [ $age -gt 60 ]; then
        echo "User is a senior citizen"
else
        echo "User is not a senior citizen"
fi

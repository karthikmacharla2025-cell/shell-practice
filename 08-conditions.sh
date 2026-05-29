#!/bin/bash

NUMBER=$1

if [ $NUMBER -ge 20 ]; then
    echo "Given numer $NUMBER is greater than or equal to 20"
elif [ $NUMBER -eq 20 ]; then
    echo "Given numer $NUMBER is equal to 20"
else
    echo "Given numer $NUMBER is smaller than or equal to 20"
fi
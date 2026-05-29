#!/bin/bash

Num1=10
Num2=20

SUM=$(($Num1+$Num2))

echo "Sum is: $SUM"

#Array
MOVIES=("RRR" "Varanasi" "Pushpa")
echo "Movies are: ${MOVIES[@]}" 
echo "Movie First: ${MOVIES[0]}" 
echo "Movies second: ${MOVIES[1]}" 
echo "Movies Third: ${MOVIES[2]}" 
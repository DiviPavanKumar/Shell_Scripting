#!/bin/bash

echo "Hello World! practicing Variables samples"

# Defining Variables

NAME="Pavan"
AGE="32"
CITY="Hyderabad"

A="10"
B="20"

NUMBER1
NUMBER2
SUM=$((NUMBER1 + NUMBER2))

# Printing variables

echo "My name is $NAME"
echo "Im $AGE years old"
echo "Im staying in $CITY"

echo "Before Swap: A=$A, B=$B"
echo "After Swap: A=$B, B=$A"

read -p "Enter First number: " NUMBER1
read -p "Enter 2nd number: " NUMBER2
echo "Addition= $SUM"


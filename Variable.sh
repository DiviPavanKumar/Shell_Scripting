#!/bin/bash

echo "Hello World! practicing Variables samples"

# Defining Variables

NAME="Pavan"
AGE="32"
CITY="Hyderabad"

A="10"
B="20"

NUMBER1=$1
NUMBER2=$2

# Printing variables

echo "My name is $NAME"
echo "Im $AGE years old"
echo "Im staying in $CITY"

echo "Before Swap: A=$A, B=$B"
echo "After Swap: A=$B, B=$A"

echo "Enter First number: $1"
echo "Enter 2nd number: $2"
echo "Addition= $(NUMBER1+NUMBER2)"


#!/bin/bash

echo "Hello World! practicing Variables samples"

# Defining Variables

NAME="Pavan"
AGE="32"
CITY="Hyderabad"

A="10"
B="20"

# Printing variables

echo "My name is $NAME"
echo "Im $AGE years old"
echo "Im staying in $CITY"

echo "Before Swap: A=$A, B=$B"
echo "After Swap: A=$B, B=$A"

read -p "Enter First number: " NUM1
read -p "Enter 2nd number: " NUM2
sum=$(( NUM1 + NUM2 ))
echo "Addition: $sum"


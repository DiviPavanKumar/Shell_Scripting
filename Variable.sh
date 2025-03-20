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

# Read user input first
read -p "Enter First number: " NUM1
read -p "Enter 2nd number: " NUM2

# Perform calculations after getting input
sum=$((NUM1 + NUM2))
diff=$((NUM1 - NUM2))
Mul=$((NUM1 * NUM2))

# Display results
echo "Addition: $sum"
echo "Subtraction: $diff"
echo "Multiplication: $Mul"

# Read user input first

read -p "Enter the Value: " num1

If ((num1 % 2 == 0));
echo "$num1 is Even number"
else
"$num1 is ODD number"
fi


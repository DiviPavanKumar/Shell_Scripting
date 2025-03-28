#!/bin/bash

echo "Hello World! practicing Variables samples"

# Defining Variables

NAME="Pavan"
AGE="32"
CITY="Hyderabad"

# Printing variables

echo "My name is $NAME"
echo "Im $AGE years old"
echo "Im staying in $CITY"
#-----------------------------------------
#1. Swap Two Variables

read -p "Enter A value: " A
read -p "Enter B value: " B

echo "Before Swap: A=$A, B=$B"
echo "After Swap: A=$B, B=$A"
#-------------------------------------------
#2. Arithmetic Operations
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
#---------------------------------------------
#3. Check If a Number is Even or Odd

# Read user input
read -p "Enter the Value: " num

#Check If a Number is Even or Odd

if (( num % 2 == 0 )); then
    echo "$num is an Even number"
else
    echo "$num is an Odd number"
fi
#----------------------------------------------
#4. Reverse a String Using a Variable

read -p "Enter a string: " str
reversed_str=$(echo "$str" | rev)
echo "Reversed String: $reversed_str"
#-----------------------------------------------
#6. Count Characters in a String

read -p "Enter a string: " str
lenght=${#str}
echo "Total characters in this $str= $lenght"

#-----------------------------------------------
#7. Check If a String is a Palindrome
read -p "Enter a string: " str
reversed_str=$(echo "$str" | rev)
if [ "$str" = "$reversed_str" ]; then
echo "$str is Palindrom"
else
echo "$str is not Palindrom"
fi

#-----------------------------------------
#8. Find the Largest of Three Numbers
# Take three numbers as input
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

# Compare the numbers to find the largest
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    echo "The largest number is: $num1"
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    echo "The largest number is: $num2"
else
    echo "The largest number is: $num3"
fi
#-------------------------------------------
#9.Calculate Factorial of a Number
# Prompt the user to enter a number
read -p "Enter a number: " num

# Initialize the factorial result to 1
factorial=1

# Loop to calculate the factorial
for (( i=1; i<=num; i++ ))
do
    factorial=$(( factorial * i ))
done

# Output the result
echo "The factorial of $num is: $factorial"
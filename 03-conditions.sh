#!/bin/bash

#condition in shell_script: 7Days: Mon-Sat have School, Sundy is Holiday

read -p "Enter what day today: " Day
if [ "$Day" = "Sunday" ]; then
echo "Today is Sunday, Holiday"
else
echo "$Day is not hoilday. So go to school"
fi
#----------------
#Condition: Check if the number greater than 10 or not
read -p "Enter the number: " Num
if [ $Num -gt 10 ]; then
echo "$Num is greater than 10"
else
echo "$Num is not greater than 10"
fi
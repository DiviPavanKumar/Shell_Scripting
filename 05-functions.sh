#!/bin/bash
#Our program goal is to install MySQL and Postfix
#1. Check whether root user or not
#2. If not root user, exit the program and inform to user run with sudo access
#3. If root user, install MySQL

Date=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$Date.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

USERNAME=$(id -u)

if [ $USERNAME -ne 0 ]; then
echo "Error:: Please run this with sudo access"
exit 1
fi

# This function should validate the previous command output and Inform user whether it is successful or failed.
VALIDATE() {
# $1 --> it will receive the argument1 from the function call
# $2 --> it will receive the argument2 from the function call
if [ $? -ne 0 ]
then
echo -e "$1 ..... $R Failed $N"
exit 1
else
echo -e "$2 ...... $G Successful $N"
fi
}

dnf install mariadb105 -y &>>$LOGFILE

VALIDATE $? "MySQL installation"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "POSTFIX installation"



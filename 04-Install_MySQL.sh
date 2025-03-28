#!/bin/bash

#1. Check whether root user or not
#2. If not root user, exit the program and inform to user run with sudo access
#3. If root user, install MySQL

USERNAME=$(id -u)

if [ $USERNAME -ne 0 ]; then
echo "Error:: Please run this with sudo access"
exit 1
fi
dnf install mariadb105
if [ $? -ne 0 ]
then
echo "Error:: MySQL installation failed"
exit 2
else
echo "MySQL installation is successful"
fi

yum install postfix -y
if [ $? -ne 0 ]
then
echo "Error:: Installation of Postfix failed"
exit 3
else
echo "Postfix installation is successful"
fi


#!/bin/bash

for i in {1..10} 
do
    echo "Welcome $i times"
done
# The above script will print "Welcome $i times" 10 times.

for ((i=0; i<=100; i++))
do
echo "$i"
done
# The above script will print numbers from 0 to 100.

# Generate a timestamp for logging
date_var=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(basename "$0")
LOGFILE="/tmp/${SCRIPT_NAME}-${date_var}.log"

# Define color codes for output
R="\e[31m"  # Red (Failure)
G="\e[32m"  # Green (Success)
Y="\e[33m"  # Yellow (Info)
N="\e[0m"   # Reset color

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "${R}Error: Please run this script with sudo access.${N}"
    exit 1
fi

# Check if user provided arguments (packages)
if [ $# -eq 0 ]; then
    echo -e "${Y}Usage: $0 package1 package2 ...${N}"
    exit 1
fi

# Validation function
VALIDATE() {
    if [ $? -ne 0 ]; then
        echo -e "$1 ..... ${R}Failed${N}"
        exit 1
    else
        echo -e "$1 ...... ${G}Successful${N}"
    fi
}

# Install packages provided as arguments
for package in "$@"; do
    echo -e "${Y}Installing $package...${N}"
    
    if rpm -q "$package" &>/dev/null; then
        echo -e "$package ${Y}is already installed.${N}"
    else
        yum install -y "$package" &>>"$LOGFILE"
        VALIDATE "$package installation"
    fi
done

echo -e "${G}All requested packages are installed successfully!${N}"
echo -e "Check the log file at: ${LOGFILE}"
# The above script will install the packages provided as arguments and log the output to a file.
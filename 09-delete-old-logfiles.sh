#!/bin/bash

# Define the directory to search (current directory in this case)
DIRECTORY="/home/ec2-user/app-logs" 

date_var=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(basename "$0")
LOGFILE="/tmp/${SCRIPT_NAME}-${date_var}.log"

R="\e[31m"  # Red (Failure)
G="\e[32m"  # Green (Success)
Y="\e[33m"  # Yellow (Info)
PINK="\033[1;35m" # Pink
N="\e[0m"   # Reset color

echo -e "${Y}\nListing all .txt files: ${N}"
find "$DIRECTORY" -type f -name "*.txt"

# Get the current date (for comparison)
CURRENT_DATE=$(date +%s)

# Find and delete .txt files that are older than 2 weeks (14 days)
echo -e "${R}\nDeleting .txt files which is older than 2 weeks......."
find "$DIRECTORY" -type f -name "*.txt" -mtime +14 -exec rm -v {} \; &>>"$LOGFILE"

# Show remaining .txt files (not deleted)
echo -e "${G}\nRemaining .txt files (not deleted):${N}"
find "$DIRECTORY" -type f -name "*.txt"
echo -e "${PINK}Check the log file at: ${LOGFILE} ${N}"

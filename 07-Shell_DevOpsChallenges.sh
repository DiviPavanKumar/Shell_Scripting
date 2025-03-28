#!/bin/bash

#1.	Print System Information
#Write a script to display the OS name, kernel version, and system uptime.

echo "OS Name: $(uname -s)"
echo "Kernel Version: $(hostnamectl | grep Kernel)"
echo "System Uptime: $(yum check-update)"

#2.	Check Disk Usage
#Create a script that checks disk usage (df -h).If usage exceeds 80%, print a warning message.
Treshold=80
DiskUsage=$(df -h | grep /dev/sda1 | awk '{print $5}' | cut -d "%" -f1)
if [ $DiskUsage -gt $Treshold ]; then
    echo "Disk usage is above $Treshold%."
else
    echo "Disk usage is below $Treshold%."
fi

#3.Automate User Creation:
#Write a script to create a new user with a random password and expire the password on first login.
# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Get username input
read -p "Enter the new username: " username

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists. Exiting."
    exit 1
fi

# Generate a random password
password=$(openssl rand -base64 12)

# Create the user and set the password
useradd -m -s /bin/bash "$username"
echo "$username:$password" | chpasswd

# Expire the password on first login
passwd --expire "$username"

# Display the username and password
echo "User '$username' has been created."
echo "Password: $password"
echo "The user must change the password upon first login."

exit 0





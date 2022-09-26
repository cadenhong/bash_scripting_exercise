#!/bin/bash

# Write a script to print the following system information:
# - Currently logged users
# - Your shell directory
# - Home directory
# - OS name & version
# - Current working directory
# - Number of users logged in
# - Show all available shells in your system
# - Hard disk information
# - CPU information
# - Memory information
# - File system information
# - Currently running process

# Prerequisites:
# - Knowledge about user commands w, who, whoami
# - Bash environmental variables
# - /proc file-system
# - Other system info commands like df, du, uname, ps

# Objective:
# - To learn system information commands

# Requirements:
# - Provide a menu for user about what information he wants to check
# - Using switch case display output for selected option

echo "SYSTEM INFORMATION TO CHECK"
echo "--------------------------------"
echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"
echo "--------------------------------"
read -p "Enter a number to you wish to check: " input

case $input in
    1) who | awk '{print $1}' ;;
    2) echo $SHELL ;;
    3) echo $HOME ;;
    4) hostnamectl | grep 'Operating System' ;;
    5) pwd ;;
    6) who | wc -l ;;
    7) cat /etc/shells ;;
    8) lsblk /dev/sda ;;
    9) cat /proc/cpuinfo ;;
    10) cat /proc/meminfo ;;
    11) df ;;
    12) ps aux ;;
    *) echo "Invalid input!!!" ;;
esac
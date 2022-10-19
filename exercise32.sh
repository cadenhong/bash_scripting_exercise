#!/bin/bash

# Count the number of users with user IDs between 500 and 10000 on the system

# Prerequisites:
# Must know df, cut & tr commands.
# Loops and arrays.

# Objective:
# Learn about etc configuration files.

# Requirements:
# Fetch user-ids from the in /etc/passwd file.
# Display only usernames between the range.
# User can change the range using command-line arguments.
# Default is 500 – 100000.

user_name=( $(cat /etc/passwd | awk -F: '{print $1}')) # array of usernames
user_id=( $(cat /etc/passwd | awk -F: '{print $3}')) # array of user ids
ctr=0 # counter

for (( i=0; i<${#user_id[@]}; i++ )); do # for loop to index thru user_id array
    if [ ${user_id[$i]} -ge 500 ] && [ ${user_id[$i]} -le 100000 ]; then # if user_id in certain index is between 500-100000
        ((ctr=$ctr+1)) # increment counter
        echo ${user_name[$i]} # echo corresponding username
    fi
done

echo "A total of $ctr user IDs range between 500 and 100000"

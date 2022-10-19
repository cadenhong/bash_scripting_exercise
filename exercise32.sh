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

user_name=( $(cat /etc/passwd | awk -F: '{print $1}'))
user_id=( $(cat /etc/passwd | awk -F: '{print $3}'))
ctr=0

for (( i=0; i<${#user_id[@]}; i++ )); do
    if [ ${user_id[$i]} -ge 500 ] && [ ${user_id[$i]} -le 100000 ]; then
        ((ctr=$ctr+1))
        echo $user_name[$i]
    fi
done

echo "A total of $ctr user IDs range between 500 and 100000"
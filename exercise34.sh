#!/bin/bash

# Write a script to search a user present in your system

# Prerequisites:
# Must know df, cut & tr commands.
# Loops and arrays.

# Objective:
# Learn about etc configuration files.

# Requirements:
# Fetch user-names from the first field in /etc/passwd file.
# Search given name in the list.

usernames=( $(cat /etc/passwd | awk -F: '{print $1}') ) # array of usernames from /etc/passwd

read -p "Enter username to check if present in this system: " user_input # user input stored in variable

for username in ${usernames[@]}; do # for each element in usernames array
  if [[ $username == $user_input ]]; then # check if it equals user_input
    echo "$user_input is present!"
  fi
done

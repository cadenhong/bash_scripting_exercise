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

usernames=( $(cat /etc/passwd | awk -F: '{print $1}') )

read -p "Enter username to check if present in this system: " user_input

for username in ${usernames[@]}; do
  if [ $username -eq $user_input]; then
    echo "$user_input is present!"
  else
    echo "$user_input is NOT present in this system."
  fi
done
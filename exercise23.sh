#!/bin/bash

# Display the longest and shortest user-names on the system

# Prerequisites:
# - Filter commands cut and tr.
# - Arrays in script.
# - String operations.

# Objective:
# - Learn about etc configuration files.

# Requirements:
# - Fetch user-names from the first field in /etc/passwd file.
# - Print longest and shortest name.

usernames=( $(cat /etc/passwd | awk -F: '{print $1}') )
longest=${usernames[0]}
shortest=${usernames[0]}

for i in ${!usernames[@]}; do
  current=${usernames[i]}
  currLen=${#current}

  if [ "$currLen" -gt "${#longest}" ]; then
    longest=$current
  elif [ "$currLen" -lt "${#shortest}" ]; then
    shortest=$current
  fi
done

echo "Longest username: $longest"
echo "Shortest username: $shortest"

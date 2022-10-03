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

usernames=( $(sudo cat /etc/passwd | awk -F: '{print $1}') )
declare -p usernames


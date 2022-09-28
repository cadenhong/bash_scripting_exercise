#!/bin/bash

# Write a script to rename a file/directory replaced by lower/upper case letters

# Prerequisites:
# - Knowledge about mv and tr commands.
# - To check a file type in script.
# - WARNING: Dont try this in your home/ or assignment/ directory.
#   Please create a seperate directory to test this script.

# Objective:
# - To learn filter/translate commands
# - Identifying file types in script

# Requirements:
# - Rename all files from current directory to lowercase letters.
# - Rename all directories from current directories to uppercase.
# - Digits and other symbols should remain same.

for item in *; do                           # check each item in cwd
    if [ -d "$item" ]; then                 # execute if item is a directory
        new_dir=$(echo $item | tr a-z A-Z)
        mv $item $new_dir
    elif [ -f "$item" ]; then               # execute if item is a file
        new_file=$(echo $item | tr A-Z a-z)
        mv $item $new_file
    fi
done
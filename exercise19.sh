#!/bin/bash

# Given album name and directory create a script to name files properly by inserting index numbers.

# Prerequisites:
# - Knowledge about mv and tr commands.
# - WARNING: Dont try this in your home/ or assignmen/ directory.
# - Please create a separate directory to test this script.

# Objective:
# - To learn filter/translate commands

# Requirements:
# - Aim of this project is to rename all files in one directory with a common name and indexing.
# - Usually when we takes pics in camera or mobile default names are like DSN001.jpg, DSN002.jpg
# - These files need to be renamed by user given prefix name
# - Prefix name pass through command-line argument.

prefix=$1
ctr=1

for eachfile in *; do
    if [ -f "$eachfile" ]; then
        extension=$(echo $eachfile | awk -F. '{print $2}')
        mv ./$eachfile ./$prefix$ctr.$extension
        ((ctr=$ctr+1))
    fi
done
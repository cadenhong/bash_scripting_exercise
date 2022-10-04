#!/bin/bash

# Write a script to delete all the .swp files found in your system or directory

# Prerequisites:
# Knowledge about find command.

# Objective:
# Learn various usage of find command.

# Requirements:
# - Find and delete all .swp files (Temperory vi files).
# - If command-line directories are passed delete only from that directories
# - If no arguments passed delete from entire ~/ directory
# - If no file present show a message.

if [ $# -eq 0 ]; then
    location=~/
else
    location=$1
fi

tempfiles=$(find $location -name "*.swp" -type f | wc -l)

if [ $tempfiles -eq 0 ]; then
    echo "No .swp files are present!"
else
    find $location -name "*.swp" -type f -delete
    echo "Total of $tempfiles .swp file(s) deleted from $location"
fi

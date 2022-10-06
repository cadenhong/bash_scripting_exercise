#!/bin/bash

# Write a script that takes any number of directories as command-line arguments and
# then lists the contents of each of these directories

# Prerequisites:
# - Use of loops.
# - Print content of current directory without ls.

# Objective:
# - Accessing various directories using script.

# Requirements:
# - This script will work like a ls command.
# - Don’t use ls command.
# - Pass any number of directories through command-line.ß
# - If no arguments passed, list current directory.

totalDir=$#

if [ $totalDir -eq 0 ]; then
    directory=$(pwd)
    for filename in *; do
        echo "file name is " $filename
    done
else
    for directory in $@; do
        for filename in $directory/$*; do
            echo "file name is " $filename
        done
    done
fi
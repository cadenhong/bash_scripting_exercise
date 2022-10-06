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
# - Pass any number of directories through command-line.
# - If no arguments passed, list current directory.

if [ $# -eq 0 ]; then
    echo "CONTENTS OF $(pwd)"
    for content in *; do
        echo -n "$content "
    done
    echo
else
    for directory in "$@"; do
	echo "CONTENTS OF $directory"
        for content in $directory/*; do
	    name=$(echo $content | awk -F\/ '{print $(NF)}')
            echo -n "$name "
        done
	echo $'\n'
    done
fi

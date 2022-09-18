#!/bin/bash

# Write a script to compare larger integer values from a ‘n’ number of arguments using command line arguments

# Prerequisites:
# - How to run a loops in shell scripts.
# - How to execute a bash script.
# - How to change execute permission of a file..

# Objective:
# - To understand working of command-line arguments
# - To understand working of integer comparison in script.

# Requirements:
# - Using command-line pass n arguments.
# - Compare all these arguments and print the largest value
# - Print error in-case no arguments.
# - Number of arguments can vary every time.

if [ $# -eq 0 ]; then # '$#' checks if there are any arguments provided
    echo "No arguments provided!"
    exit 1
else
    largest=0

    for num in "$@"; do # '$@' is the array of all input parameters
        if [[ $num -gt $largest ]]; then
            largest=$num
        fi
    done

    echo "Largest number is: $largest"
fi
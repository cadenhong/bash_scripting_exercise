#!/bin/bash

# Write a script to print the length of each and every string using arrays

# Prerequisites:
# - Knowledge about arrays.
# - How to find length of string.
# - How to access command-line arguments.

# Objective:
# - To learn more string manipulation in scripts.

# Requirements:
# - Pass some names or strings from command-line.
# - Print all the string lengths one-by-one.
# - Number of argument may vary.

for word in "$@"; do # $@ is the array of all input parameters
    echo "Length of $word is: ${#word}" # retrieves the length of each parameter
done
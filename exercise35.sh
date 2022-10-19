#!/bin/bash

# Write a script to replace 20% lines in a C file randomly and replace it with the pattern

# Prerequisites:
# Knowledge about sed command.
# How to create random number.
# Editing file using sed command.

# Objective:
# Learn more about sed command.

# Requirements:
# Provede a .c file to this script through command-line.
# Randomly delete 20% lines from the file.
# Whereever you deleted replace a string.

file=$1

total_lines=$(cat $file | wc -l)
fifth_of_lines=((total_lines/5))

echo $fifth_of_lines
#!/bin/bash

# Shell script to convert string lower to upper and upper to lower

# Prerequisites:
# Knowledge about tr command

# Objective:
# Command output translation.

# Requirements:
# Provide a filename through command-line.
# Ask user for conversion Lower to Upper / Upper to Lower.

filename=$1

echo "1. Convert from Lower to Upper"
echo "2. Convert from Upper to Lower"
read -p "Enter conversion option: " conversion

if [ $conversion -eq 1 ]; then
    tr [:lower:] [:upper:] < $filename > converted.txt
elif [ $conversion -eq 2 ]; then
    tr [:upper:] [:lower:] < $filename > converted.txt
else
    echo "Invalid option!"
fi

echo "converted.txt has been created with the converted content!"
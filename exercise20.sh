#!/bin/bash

# Write script to print contents of file from given line number to next given number of lines

# Prerequisites:
# Piping in shell
# head and tail commands

# Objective:
# To learn about file filter commands.

# Requirements:
# - Pass three command-line arguments:
# - starting line number, number of lines, and filename
# - Script will print n lines from given starting line.

##### linetotal=$(wc -l < $filename | bc)

startline=$1
numoflines=$2
filename=$3

chunk=$(($startline+$numoflines-1))

head -$chunk $filename | tail -n $numoflines
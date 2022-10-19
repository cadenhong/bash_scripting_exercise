#!/bin/bash

# For each directory in the $PATH, display the number of executable files in that directory

# Prerequisites:
# Must know bash environmental variables.
# Working of tr command.
# Loops and arrays.
# Checking permission of files in script.

# Objective:
# Learn significance of PATH variable.

# Requirements:
# Fetch each directories from PATH variable.
# Use -x option if if condition to check executable permission.
# Print directory and number of executable files one-by-one.
# Print the total number of executable files at last.
# Count only files have executable permission.
# Verify path is present every-time.

dirs=( $(echo $PATH | awk -F: '{ for( i=1; i<NF; i++ ) print $i }' | uniq) ) # array of unique directories in PATH variable

total=0 # total executable counter

for dir in ${dirs[@]}; do # for each directory in dirs array

  ctr=0 # counter of executables for each directory

  for file in $dir/*; do # for each files in a directory
    if [ -x $file ]; then # if a file is executable
      ((ctr=$ctr+1)) # increment counter
    fi
  done

  echo "Num of Executables in $dir is: $ctr"
  ((total=$total+$ctr))

done

echo "Total Num of Executables in PATH variable is: $total"

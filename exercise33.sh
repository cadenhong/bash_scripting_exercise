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

dirs=( $(echo $PATH | awk -F: '{ for( i=1; i<NF; i++ ) print $i }' | uniq) )

total=0

for dir in ${dirs[@]}; do

  ctr=0

  for file in $dir/*; do
    if [ -x $file ]; then
      ((ctr=$ctr+1))
    fi
  done

  echo "Num of Executables in $dir is: $ctr"
  ((total=$total+$ctr))

done

echo "Total Num of Executables in PATH variable is: $total"

#!/bin/bash

# Display the names of any file-system which have less than 10% free space available

# Prerequisites:
# Must know commands df, tr and cut
# Use of arrays and loops.

# Objective:
# Learn more about mounting, file-systems and device files.

# Requirements:
# When you run the script show all file-system present in system.
# Then print file-systems that have only 10% memory remaining.

name=( $(df -h | tail -n +2 | awk '{print $1}') ) # array of filesystem names
usage=( $(df -h | tail -n +2 | awk '{print $5}' | sed 's/\%//') ) # array of usag>

for (( i=0; i<${#usage[@]}; i++ )); do # for loop to iterate thru usage array
  if [ ${usage[$i]} -ge 90 ]; then # if statement to check if usage is > 90
    echo ${name[$i]} # echo the element with same index in name array
  fi
done

#!/bin/bash

# Write a script to determine whether a given file system or mount point is mounted

# Prerequisites:
# Must know commands df, tr and cut
# Use of arrays and loops.

# Objective:
# Learn more about mounting, file-systems and device files.

# Requirements:
# Check that given file-system is mounted or not
# If its mounted, print free-space available in it.
# Other-wise print error message.

read -p "Enter file system to check if mounted: " filesystem

mounted=$(df -T | grep $filesystem)

if [ -z "$mounted" ]; then
  echo "$filesystem is NOT mounted"
  exit 1
else
  available=$(echo $mounted | awk '{print $5}')
  echo "Available storage is $available"
fi

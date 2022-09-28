#!/bin/bash

# Write a script to rename current working directory with given name

# Prerequisites:
# Knowledge about mv and tr commands.
# WARNING: Dont try this in your home/ or assignmen/ directory.
# Please create a seperate directory to test this script.

# Objective:
# To learn filter/translate commands

# Requirements:
# After execting this script your current directory will be renamed to given name
# Pass new name through command-line.

oldname=$(pwd | awk -F/ '{print $NF}')
newname=$1
newpath=$(pwd | sed "s/$oldname/$newname/")
mv $pwd $newpath

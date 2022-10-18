#!/bin/bash

# Write a script to locks down file permissions for a particular directory

# Prerequisites:
# Must know working of chmod command.

# Objective:
# Learn about file permissions.

# Requirements:
# Remove all permissions for groups and others.
# Provide directory name through command-line.
# After running script all files in the given directory, Only should have all the permissions.
# But remember dont add any permission to user only change to others and groups.

dir_name=$@

for f in $dir_name/*; do
    chmod og-rwx "$f
done
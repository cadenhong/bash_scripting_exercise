#!/bin/bash

# Use pipes or redirection to create an infinite feedback loop

# Prerequisites:
# Knowledge about piping and redirection.
# Use of tail command with follow option.

# Objective:
# Learn about following a file.
# Redirection

# Requirements:
# The final output becomes the input again to the command line.
# Be alert, remember to stop this command before it fills your hard disk.
# Look at the documentation for the tail command.

echo "Hello there!" > hello.txt
tail -f hello.txt >> hello.txt
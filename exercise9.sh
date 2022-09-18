#!/bin/bash

# Write a script to delete empty lines from a file

# Prerequisites:
# Knowledge about sed.
# Knowledge about regular-exp.

# Objective:
# To learn sed command-line
# To learn about regular-exp

# Requirements:
# Pass a filename through command-line.
# Delete all the empty lines from that file and save it back.


sed -i '/^$/d' $1

# -i flag used to edit file in-place instead of printing to command line

# caret symbol (^) used to match beginning of a regex
# dollar symbol ($) used to match the end of a regex
# together (^$) used to match the entire string
# i.e:
#	'^\d+$' means entire string must be digits
# By not having anything in between, it matches an empty line

# d is to delete the matching line

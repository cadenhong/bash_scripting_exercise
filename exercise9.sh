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

filename=$1

sed -z 's/\n//g' $filename

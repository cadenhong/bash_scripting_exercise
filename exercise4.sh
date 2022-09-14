#!/bin/bash

# Write a script for scp & ssh by demonstrating remote login & file transfer functions

# Prerequisites:
# Knowledge about ssh and scp commands.
# Use of “case” in shell script.
# Copy files/directories with cp command

# Objective:
# To understand working of scp and ssh commands.

# Requirements:
# Provide a menu to user to select ssh or scp
# Based on user selection ask for user name and ip-address.
# For scp ask user for direction of copy (remote to local | local to remote).
# copy file to destination home directory with same source file name.
# Ask for source/destination file location. If no destination location is provided.
# If user gives destination along with filename, keep that as destination filename.
# If user provides only destination location (no file name), keep as source file name.

# Note: User should know the password for remote user.

echo "SSH to remote into a server | SCP to tranfer a file to/from a server"
echo "To proceed, provide the following info: "
read -p "IP Address of the remote server: " ip
read -p "Username used in the remote server: " username
read -p "Select an option - SSH or SCP: " input
case $input in
  SSH | ssh) echo "Establishing connection to $ip"
	     sleep 2
             ssh -i kl-deployment1.pem $username@$ip ;;
  SCP | scp) read -p "Enter file name to transfer: " file
	     echo "Direction of Copy:"
	     echo "1. Remote to Local"
	     echo "2. Local to Remote"
	     read -p "Enter 1 or 2: " direction
	     case $direction in
	       1) echo "Remote to Local file transfer confirmed"
		  read -p "Enter file source location on remote server: " source
		  read -p "Enter file destination location on local machine: " destination
		  read -p "Enter new file name (leave blank to keep original name): " newname
		  if [[ -n $newname ]]; then
		    scp -i kl-deployment1.pem $username@$ip:$source/$file $destination/$newname
		  else
		    scp -i kl-deployment1.pem $username@$ip:$source/$file $destination
		  fi ;;
	       2) echo "Local to Remote file transfer confirmed"
		  read -p "Enter file source location on local machine: " source
		  read -p "Enter file destination location on remote server: " destination
		  read -p "Enter new file name (leave blank to keep original name): " newname
                  if [[ -n $newname ]]; then
                    scp -i kl-deployment1.pem $file $username@$ip:$destination/$newname
                  else
                    scp -i kl-deployment1.pem $file $source $username@$ip:$destination
                  fi ;;
	       *) echo "Invalid input!" ;;
	     esac ;;
  *) echo "Invalid input!" ;;
esac

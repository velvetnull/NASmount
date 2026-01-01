#!/bin/bash

# SMB Mount Service- NASmount.sh

# Version 1.0
# Copyright 2025 Jesse Zelesnikar
# Authored by: Jesse Zelesnikar aka VelvetNull

# Licensed under GNU Affero General Public License (AGPL v3.0 )
# This software is licensed for non-commercial use only. You may use, copy, and modify
# this software for personal, educational, or research purposes, provided that this
# notice remains intact. Commercial use is strictly prohibited without prior written
# permission from the copyright holder.

# Contact at velvetnull@proton.me (For commerical Licensing Inquiries)

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE,
# ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

# This application will mount and unmount the network share(s) listed below to the system
# Prerequisites:
# A mount location (folder) for each SMB share that is needed to me mounted
# A credential file to store your username and password.  The file .cred and is located in ~/.config/.cred.  It should be formatted as below:
	# username=your_username
	# password=your_password
# Your system will need to have the cifs-utils package installed.  It normally is but double check anyway.

# Variables
COUNT=1
# Application Start
# While loop to keep application running until exited
clear
while [ $COUNT == 1 ]; do
# Application Menu
	echo "SMB Mount Service"
	echo "--------------------------------"
	echo "Options:"
	echo "1 = Mount SMB Shares"
	echo "2 = Unmount SMB Shares"
	echo "3 = Exit the application"
	echo "--------------------------------"
	echo -n "What option do you choose? "
	read ANSWER
# If statement to run the option selected
		if [ $ANSWER == 1 ]; then
			echo "Mounting SMB shares"
			sudo mount -t cifs #//X.X.X.X/<PATH TO NAS> <PATH TO Mount Location> -o credentials=~/.config/.cred,noperm
			sleep 2
			echo "If no error the SMB Shares should be mounted.  If error check error."
			sleep 5
		elif [ $ANSWER == 2 ]; then
			echo "Unmounting SMB Shares"
			sudo umount #<PATH TO Mount Location>
			sleep 2
			echo "If no error the SMB Shares should be unmounted.  If error check error."
			sleep 5
		elif [ $ANSWER == 3 ]; then
			echo "Exiting the SMB Mount Service Application"
			sleep 5
			let COUNT=COUNT+1
			clear
			exit 0
		else
			echo "Invalid option chosen"
			echo "Please select a valid option from the list"
		fi
# Stop at the end of the loop to pause before going back up
	read -p "Press any key to continue"
	clear
done

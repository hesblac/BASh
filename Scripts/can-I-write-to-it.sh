#!/bin/bash
# check if a file is writable
#
 item_name=$HOME/bashscripting
#
echo
echo "Checking if you can write to $item_name..."
#
#check if file exists and is a file
#

if [ -f $item_name ]
then
	#File does exist. chek if can write to it.
	#
	if [ -w $item_name ]
	then 
		echo "Writing current time to $item_name"
		date +%H%M>> $item_name

		#
	else
		echo "Sorry, write access to $item_name is denied."
	fi
else
	echo "Sorry, the $item_name does not exist"
	echo "or is not a file."
fi



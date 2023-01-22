#!/bin/sh

#reading values from a file
#
 file="states.txt"

 IFS=$'\n'

 for state in $(cat $file)
 do 
	 echo "Visit beautiful $state"
 done


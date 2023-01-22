#!/bin/sh
# Look before you leap
#
 jump_directory=/home/rmary

 if [ -d $jump_directory ]
 then
	 echo "The $jump_directory directory exists."
	 cd $jump_directory
	 ls
 else
	 echo "The $jump_directory directory does NOT exist."
 fi


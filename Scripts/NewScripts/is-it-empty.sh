#!/bin/sh
#check if file is empty
#
 chfile=/etc/passwd

 if [ -s $chfile ]
 then
	 echo "The file is not empty"
 else
	 echo "The file has no content"
 fi


#!/bin/sh

#changing the IFS value to loop on file data, /etc/passwd in this case.
#
 IFS.OLD=$IFS
 IFS=$'\n'
 for entry in $(cat /etc/passwd)
 do
	 echo "Values in $entry -"
	 IFS=:
	 for value in $entry
	 do
		 echo "	$value"
	 done
 done


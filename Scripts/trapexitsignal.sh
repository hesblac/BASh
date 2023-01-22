#!/bin/bash


#Testing exit trapping in a script
#
trap "echo Goodbye..." EXIT #idea you can put a new program here that can run isnstead of echoing words.
#also remember that trapping the exit works primaturely when you use ctr-C

count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
exit


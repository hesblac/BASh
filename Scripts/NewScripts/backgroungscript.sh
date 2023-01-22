#!/bin/sh

#test running in the background
#
count=1
while [ $count -le 5 ]
do
	sleep 1
	count=$[ $count + 1 ]
done
#this is run using the & symbl to push it to the backgroung
#
exit

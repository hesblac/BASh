#!/bin/sh

#redirecting the for output of file
#
for (( a = 1; a < 10; a++ ))
do 
	echo "The number is $a"
done> testingoutput_of_loops.txt
echo "The command is finished."


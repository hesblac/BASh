#!/bin/sh


# Test running in the background
#
name=$(basename $0)

echo "Starting the script...$name"
#remember that all output of nohup commands are sent to the same nohup.out file
#as far as they are in the same folder. so if you are running multiple scripts
# with nohup and you dont' want the results to be appended to each other in
# nohup.out, its better to run each script from different folders.
#
count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
#
echo "Script is completed."
exit

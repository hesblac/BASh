#!/bin/sh

# Testing differnt methods for grabbing all parameters
#

echo 
echo "Using the \$* method: $*"
echo 
echo "Using the \$@ method: $@"
echo

for test in $@
do
	echo "I am better than $test"
done
exit


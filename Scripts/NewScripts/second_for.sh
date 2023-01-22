#!/bin/sh

# testing the for variable after the looping
#
 for test in Alabama Alaska Arizina Arkansas California Colorado
 do 
	 echo "The next state is $test"
 done
 echo "The last state we visisted was $test"
 test=Connecticut
 echo "Wait, now we're visiting $test"


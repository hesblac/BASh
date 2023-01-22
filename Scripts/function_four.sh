#!/bin/bash


# testing the exit status of a funtion
#
 func1() {
	 echo "trying to displeay a non-existent file"
	 ls -l badfile
 }

 echo "testing the function: "
 func1
 echo "The exit status is: $?"



#!/bin/sh

# storing STDOUT, then coming back to it
#
 exec 3>&1
 exec 1>testcomplicated

 echo "This should store in the output file"
 echo "along with this line."

 exec 1>&3
 echo "Now things should be back to normal"


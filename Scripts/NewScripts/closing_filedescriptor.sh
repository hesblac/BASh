#!/bin/sh

# testing closing file descriptors
#
 exec 3> testclosingdescr
 echo "This is a test line of data" >&3
 exec 3>&-

 cat testclosingdescr

 exec 3> testclosingdescr
 echo "This'll be bad">&3

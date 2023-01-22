#!/bin/bash
#
#testing inpur/output file descriptor
#
 exec 3<> testfileredir_input
 read line <&3

 echo "Read: $line"
 echo "This is a test line">&3

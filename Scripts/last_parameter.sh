#!/bin/bash

#Testing grabbing the last parameter
#
#
(basename $0)
echo The number of parameters is $#
echo The last parameter is ${!#}
exit


#!/bin/bash


# script to filter out bad phone numbers
gawk --re-interval '/^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'
# analyzing this
# the ^ id escaped by \ 
# the (? shows thath the ( may either be included or not
# the ranges of accepted numbers
# checking for the closing bracket if it exist or not
# check for no-space,space,-,. and the dot is escaped with \
# the second range of numbers
# check for space,-,. and the dot is escaped with \ nb:(the no-space is not needed because the patter is already started)
# # script to filter out bad phone numbers
# the last range of accepted numbers,
# and  the print all 

#!/bin/bash


file=/home/sysadmin/christine/Scripts/*

for all in $file
do
	echo changing everything to sysadmin
	chown sysadmin:sysadmin $file
done


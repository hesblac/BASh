#!/bin/sh

#process new user accounts
#
input="users.csv"
while IFS=',' read -r loginname name
do
	echo "adding $loginname"
	useradd -c "$name" -s /bin/bash -m $loginname
done < "$input"

#!/bin/sh
#delete user accounts
#
input="users.csv"
while IFS=',' read -r loginname name
do
        echo "deleting $loginname"
        userdel  -r $loginname
done < "$input"
~               

#!/bin/sh

item_name=$HOME/bashscripting

if [ -x $item_name ]
then
	echo "You can run $item_name."
	echo "Running $item_name..."
	$item_name

else
	echo "Sorry, you cannot run $item_name."
fi


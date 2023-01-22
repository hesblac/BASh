#!/bin/bash


####
#
#
if (which rpm &> /dev/null)
then
	item_rpm=1
	echo "You have the basic rpm utility."
else
	item_rpm=0

fi

if (which flatpak &> /dev/null)
then
	item_flatpak=1
	echo "You have the flatpak application container."

else
	item_flatpak=0
fi

if (which dnf &> /dev/null)
then
	item_dnf=1
	echo "You have the basic dnf utility."
else
	item_dnf=0
fi

redhatscore=$[$item_dnf + $item_flatpak + $item_rpm]
#checking for debian presence.
#
if (which dpkg &> /dev/null)
then
	item_dpkg=1
	echo "You have the basic dpkg utility."
else
	item_dpkg=0
fi
##
if (which apt &> /dev/null)
then
	item_aptaptget=1
	echo "You have the basic apt  utility."
else
	item_aptaptget=0
fi
##
#
if (which flatpak &> /dev/null)
then
	item_flatpak=1
	echo "You have the basic flatpak utility"
else
	item_flatpak=0
fi

debianscore=$[$item_dpkg + $item_aptaptget + $item_flatpak]

if [ $debianscore -gt $redhatscore ]
then
	echo "Most likely your linux distribution is Debian-based."
elif [ $redhatscore -gt $debianscore ]
then
	echo "Most likely your linux distribution is Red Hat-based."
else
	echo "Unable to determine linux distribution base."
fi



#!/bin/sh

#Set spedified signal traps; then run sccript in background
#
############### Check Signals to Trap #######################
#
while getopts S: opt #Signals to trap listed with -S option
do
	case "$opt" in
		S) #Found the -S option
			signalList="" #Set signalList to null
			#
			for arg in $OPTARG
			do
				case $arg in
					1) #SIGHUP signal is handled
						signalList=$signalList"SIGHUP ";;
					2) #SIGINT signal is handled
						signalList=$signalList"SIGINT ";;
					20) #SIGTSTP signal is handled
						signalList=$signalList"SIGTSTP ";;
					*) #Unknown or unhandled signal
						echo "Only signals 1 2 and/or 20 are allowed."
						echo "Exiting script..."
						exit
						;;
				esac
			done
			;;
		*) echo 'Usage: -S "Signal(s)" script-to-run-name'
			echo 'Exiting script...'
			exit
			;;
	esac
	#
done

##
############### Check script to Run ##################
#
shift $[ $OPTIND - 1 ] #Script name should be in parameter
#
if [ -z $@ ]
then
	echo
	echo 'Error: Script name not provided.'
	echo 'Usage: -S "Signal(s)" script-to-run-name'
	echo 'Exiting Script...'
	exit
elif [ -O $@ ] && [ -x $@ ]
then
	scriptToRun=$@
	scripOutput=$@.out
else
	echo
	echo "Error: $@ is either not owned by you or not executable."
	echo "Exiting..."
	exit
fi
##
####################### Trap and Run #######################
#
echo 
echo "Running the $scriptToRun script in background"
echo "while trapping signal(s): $signalList"
echo "Output of script sent to: $scriptOutput"
echo
trap "" $signalList #Ignore these signals
#
source $scriptToRun> $scriptOutput & #Run script in background
#
trap -- $signalList #set to default behavior
#
########### Exit script #########################
#
exit


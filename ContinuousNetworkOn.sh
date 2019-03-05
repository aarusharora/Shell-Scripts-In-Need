#!/bin/bash
TEMP=0;
while true
do
	if [ $TEMP -le -5 ];
	then
		TEMP=0;
	fi
	VAR=$(ping -c 1 google.com)
	#echo $VAR
	VAR=$?
	if [ $VAR -ne 0 ];
	then
		if [ $TEMP -ge 5 ]
		then
			service NetworkManager restart || service network-manager restart;
			# Run any command here
			sleep 20s;
			TEMP=0;
			echo "Sleep Done";
		fi
		echo "Network Unreachable and TEMP = ${TEMP}"
		((TEMP++))
	else
		((TEMP--))
	fi
done

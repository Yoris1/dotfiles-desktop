#!/bin/bash
status=`playerctl status 2> /dev/null`
icon=''
if [ $? -eq 0 ]
then
	if [[ $status = "Playing" ]] || [[ $status = "Paused" ]]
	then
		icon=''
		if [[ $status = "Playing" ]] 
		then
			icon=''
		fi
		echo $icon `playerctl metadata title`  by `playerctl metadata artist`
		exit 0
	fi
fi
exit 1

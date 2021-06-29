#!/bin/bash
status=`playerctl -i discord status 2> /dev/null`
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
		echo $icon `playerctl -i discord metadata title`  by `playerctl -i discord metadata artist`
		exit 0
	fi
fi
exit 1

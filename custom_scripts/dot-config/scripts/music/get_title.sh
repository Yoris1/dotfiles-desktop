#!/bin/bash
function getPlayer() {
	players=`playerctl -l`
	for i in $players; do
		status=`playerctl -p $i status 2> /dev/null` 
		if [[ $status = $1 ]] # $1 can either be "Playing" or "Paused" 
		then
			echo $i 
			break
		fi
	done
}

mpc_status=`mpc`

main_player=`getPlayer "Playing"` # check if anything is palying on browsers
if [[ -z $main_player && $mpc_status == *"playing"* ]] ; then 
	# if nothing's playing on browsers, check if anything is playing on mpc
	echo -e playing some garbage on mpd!
	exit 0
fi
if [[ -z $main_player ]]; then
	# if nothing's playing on mpc, check if there are any paused browser videos
	main_player=`getPlayer Paused`
fi
if [[ -z $main_player && $mpc_status == *"paused"* ]]; then
	# if there are no paused browser videos, check if there's anything paused on mpd
	main_player="something paused on mpd!"
	exit 0
fi
if [[ -z $main_player ]]; then 
	main_player=`echo nothing playing!`
fi 
echo $main_player
exit 0



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

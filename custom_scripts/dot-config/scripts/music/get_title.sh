#!/bin/bash
script_dir=`dirname "$(readlink -f "$0")"`
media_info_script="$script_dir/media_info.sh" 

main_player=`$media_info_script "Playing"`
if [[ -z $main_player ]] ; then # if nothing's playing check if anything is paused
	main_player=`$media_info_script "Paused"` 
fi
if [[ -z $main_player ]]; then # if nothing's playing at all:
	echo Not Playing anything!
	exit 0
fi

status=`$media_info_script "$main_player" status`
icon=''
if [[ $status = "Playing" ]] 
then
	icon=''
fi
echo $icon `$media_info_script $main_player title`
exit 0

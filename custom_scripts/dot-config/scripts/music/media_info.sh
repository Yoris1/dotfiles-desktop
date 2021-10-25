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
	mpd_status=`mpc`
	if [[ $mpd_status == *"${1,,}"* ]]; then 
		echo mpd.`pidof mpd`
	fi
}

getPlayer "Paused" # or getPlayer "Playing"
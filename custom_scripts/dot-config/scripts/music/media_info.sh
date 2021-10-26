function getMpdStatus() {
	status=`mpc --format ""` # --format "" removes song name in case it has "paused" or "playing" in it 
	if [[ $status == *"playing"* ]]; then
		echo Playing
	elif [[ $status == *"paused"* ]]; then
		echo Paused
	fi
}
function getPlayer() {
	players=`playerctl -l`
	for i in $players; do
		status=`playerctl -p $i status 2> /dev/null` 
		if [[ $status = $1 ]] # $1 can either be "Playing" or "Paused" 
		then
			echo $i 
			exit 0
		fi
	done
	if [[ `getMpdStatus` == $1 ]]; then 
		echo mpd
	fi
}
function sendCommandToPlayer() {
	# $1 is player name, $2 is play/pause/toggle/stop/next/prev/status
	backend="mpc"
	command="$2"
	if [[ $1 != "mpd" ]]; then
		backend="playerctl" 
		case $command in
			toggle)
				command="play-pause"
			;;
			prev)
				command="previous"
			;;
		esac
	elif [[ $2 == "status" ]]; then 
		# asking for mpd status; edge case cause mpc has no one command for status
		echo `getMpdStatus`
		exit 0
	fi
	$backend $command # send $command to player with the $backend backend
}

function getPlayerTitle() {
	# $1 is a playerctl player id or "mpd"; output nicely formated song title
	if [[ $1 == "mpd" ]]; then
		echo `mpc current -f "%file%"`
	else 
		echo `playerctl -p $1 metadata title`
	fi
}


if [[ $# -eq 1 ]]; then
	getPlayer $1 # $1 is "Playing" or "Paused"
elif [[ $# -eq 2 ]]; then
	# $1 is player name; $2 is play/pause/toggle/stop/next/prev/status/title
	if [[ $2 != "title" ]]; then
		sendCommandToPlayer $1 $2
	else
		echo `getPlayerTitle $1`
	fi
fi
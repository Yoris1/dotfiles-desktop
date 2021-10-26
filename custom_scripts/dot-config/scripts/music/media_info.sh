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
	mpd_status=`mpc --format ""` # --format "" removes song name in case it has "paused" or "playing" in it 
	if [[ $mpd_status == *"${1,,}"* ]]; then 
		echo mpd
	fi
}
function sendCommandToPlayer() {
	# $1 is player name, $2 is play/pause/toggle/stop/next/prev
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
	fi
	$backend $command # send $command to player with the $backend backend
}
function getPlayerStatus() {
	# $1 is a playerctl player id or mpd
	pass
}

if [[ $# -eq 1 ]]; then
	getPlayer $1 # $1 is "Playing" or "Paused"
elif [[ $# -eq 2 ]]; then
	# $1 is player name; $2 is play/pause/toggle/stop/next/prev/status
	# TODO: add a title command
	if [[ $2 != status ]]; then
		sendCommandToPlayer $1 $2
	else 
		echo `getPlayerStatus $1`
	fi
fi
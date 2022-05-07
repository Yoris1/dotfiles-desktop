source ~/.cache/wal/colors.sh
export bg="#b0${color1/'#'}"
echo $bg
bars=`ps aux | grep polybar`
if [[ $bars != *"main"* ]]
then
	polybar -r main &
fi
if [[ $bars != *"workspaces-secondary"* ]] 
then
	polybar -r workspaces-secondary &
fi

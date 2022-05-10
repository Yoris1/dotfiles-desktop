source ~/.cache/wal/colors.sh
export bg="#b0${color1/'#'}"
echo $bg
bars=`ps aux | grep polybar`
	MONITOR=HDMI-1 polybar -r main &
	MONITOR=DVI-D-1 polybar -r main &

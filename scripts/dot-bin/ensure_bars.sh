#!/bin/bash
MONITORS="$( xrandr -q | grep -w connected | awk '{print $1}' )"
for MONITOR in $MONITORS
do
	export MONITOR
	echo "Ensuring a bar for $MONITOR"
	ps -C polybar e | grep " MONITOR=${MONITOR} " > /dev/null ||
		polybar -r main > /tmp/polybar_log_$MONITOR 2>&1 &
done
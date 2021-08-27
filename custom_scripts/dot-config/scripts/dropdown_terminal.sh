#!/bin/bash
KITTY_ID=`xdotool search --name "scratch"`
if [[ -z "$KITTY_ID" ]] 
then
	kitty --title scratch &
else
	bspc node $KITTY_ID --flag hidden
	bspc node -f $KITTY_ID
fi
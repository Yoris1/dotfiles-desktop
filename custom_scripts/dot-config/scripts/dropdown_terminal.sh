KITTY_ID=`xdotool search --name "scratch"`
if [[ -z "$KITTY_ID" ]] 
then
	kitty --title scratch &
	sleep 0.5
else
	bspc node $KITTY_ID --flag hidden
	bspc node -f $KITTY_ID
fi
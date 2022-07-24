mkdir -p ~/pics/screenshots
FILENAME=~/pics/screenshots/`date -Iseconds`.png
if [ $1 ]; then
	scrot -zfs $FILENAME && gimp --no-data $FILENAME 
else
	scrot -zfs $FILENAME
	xclip -selection clipboard -t image/png -i $FILENAME
fi


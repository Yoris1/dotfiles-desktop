res=`echo -e "Suspend\nShutdown\nReboot\nExit" | rofi -dmenu -p "Action" -config ~/.config/rofi/powermenu.rasi`
if [[ $res = "Suspend" ]] ; then
	systemctl suspend
elif [[ $res = "Shutdown" ]] ; then
	poweroff
elif [[ $res = "Reboot" ]] ; then
	reboot
fi

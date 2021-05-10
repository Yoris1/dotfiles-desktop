res=`echo -e "Suspend\nShutdown\nReboot\nExit" | rofi -dmenu -p "Action" -config ~/.config/rofi/powermenu.rasi`
if [[ $res = "Suspend" ]]
then
	echo Suspending
	systemctl suspend
elif [[ $res = "Shutdown" ]]
	then
	echo Powering Off
	poweroff
elif [[ $res = "Reboot" ]]
	then
	echo Rebooting
	reboot
fi

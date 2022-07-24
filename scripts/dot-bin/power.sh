res=`echo -e "Suspend\nLock\nShutdown\nReboot\nExit" | rofi -dmenu -i -p "Action" -config ~/.config/rofi/powermenu.rasi`
if [[ $res = "Suspend" ]] ; then
	systemctl suspend
elif [[ $res = "Shutdown" ]] ; then
	poweroff
elif [[ $res = "Reboot" ]] ; then
	reboot
elif [[ $res = "Lock" ]] ; then
	~/.bin/lock.sh
fi
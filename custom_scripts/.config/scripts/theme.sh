if [ $# -eq 1 ] ; then
	wal -i $1
else
	wal --backend $2 -i $1
fi
killall polybar
bspc wm -r
${HOME}/.config/scripts/dunst/retheme_dunst.sh
convert $1 -resize 256x256 -gravity center -crop 144x144+0+0 ${HOME}/.cache/rice_icon.png
notify-send "New theme!" $1 --icon ${HOME}/.cache/rice_icon.png
source ~/.cache/wal/colors.sh
~/.config/scripts/rofi/update_colors.sh

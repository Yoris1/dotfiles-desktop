source ~/.cache/wal/colors.sh
mkdir -p ~/.config/rofi/
cat ~/.config/scripts/rofi/templateconfig.rasi |
	sed "s/%bg%/$color0/g" > ~/.config/rofi/config.rasi

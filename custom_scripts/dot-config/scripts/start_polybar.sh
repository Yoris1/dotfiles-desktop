source ~/.cache/wal/colors.sh
export bg="#b0${color1/'#'}"
echo $bg
(polybar -r workspaces & polybar -r title & polybar -r tray & polybar -r workspaces-secondary)
source ~/.cache/wal/colors.sh
export bg="#b0${color1/'#'}"
echo $bg
(polybar -r main & polybar -r workspaces-secondary)
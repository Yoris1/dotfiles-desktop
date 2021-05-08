#!/bin/bash
source ~/.cache/wal/colors.sh
mkdir -p ${HOME}/.config/dunst/
cat ${HOME}/.config/scripts/dunst/dunstrc.template | sed "s/%bg_col/\"${color1}b1\"/g ; s/%fg_col/\"${color7}\"/g" > ${HOME}/.config/dunst/dunstrc
killall dunst
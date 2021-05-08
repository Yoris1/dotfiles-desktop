#!/bin/bash
source ~/.cache/wal/colors.sh
sed -i.bak "s/background = \".*\"/background = \"${color1}b1\"/g ;\
 s/foreground = \".*\"/foreground = \"${color7}\"/g" ${HOME}/.config/dunst/dunstrc
killall dunst
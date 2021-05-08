#!/bin/bash
FILE=${HOME}/.cache/theme_a
if [ -f "$FILE" ] ; then
	rm "$FILE"
	${HOME}/.config/scripts/theme.sh ${HOME}/.config/wallpapers/a.png
else
	touch "$FILE"
	${HOME}/.config/scripts/theme.sh ${HOME}/.config/wallpapers/b.png
fi
#!/usr/bin/env bash
zscroll --delay 0.3 -l 55 \
		--match-command "playerctl -i discord status" \
		--match-text "Playing" "--scroll 1" \
		--match-text "Paused" "--scroll 0" \
		--update-check true "$HOME/.config/scripts/music/get_title.sh" &
wait

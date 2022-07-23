#!/bin/bash
source "${HOME}/.cache/wal/colors.sh"
pgrep oneko || oneko -tofocus -fg "$color1" -bg "$color2"
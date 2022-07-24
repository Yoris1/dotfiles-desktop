#!/bin/bash
usermodmap=$HOME/.Xmodmap
[ -f $usermodmap ] && xmodmap $usermodmap || setxkbmap us,lt -option grp:caps_toggle
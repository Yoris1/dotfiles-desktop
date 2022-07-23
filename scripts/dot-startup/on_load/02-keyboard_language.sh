#!/bin/bash
setxkbmap us,lt -option grp:caps_toggle
(sleep 1 && xmodmap ${HOME}/.Xmodmap) &
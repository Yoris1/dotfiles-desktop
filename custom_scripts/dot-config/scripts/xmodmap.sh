#
setxkbmap -option lv3:rwin_switch
setxkbmap us,lt -option grp:shift_caps_toggle
xmodmap -e "keycode 62 = Mode_switch Mode_switch"

xmodmap -e "keysym Up = slash question Up"
xmodmap -e "keysym slash = slash question Up"

xmodmap -e "keysym Escape = Escape asciitilde grave"

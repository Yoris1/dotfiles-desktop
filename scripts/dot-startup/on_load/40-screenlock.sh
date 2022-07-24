#!/bin/bash
xset s 180 120
pgrep -x xss-lock > /dev/null || xss-lock -n /usr/lib/xsecurelock/dimmer -l -- ~/.bin/lock.sh
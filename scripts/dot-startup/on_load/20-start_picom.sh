#!/bin/bash
pgrep -x picom > /dev/null || picom --experimental-backends -b

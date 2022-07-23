#!/bin/bash
MONITORS="$( xrandr -q | grep -w connected | awk '{print $1}' )"
#!/bin/bash
pgrep -x sxhkd > /dev/null || sxhkd &

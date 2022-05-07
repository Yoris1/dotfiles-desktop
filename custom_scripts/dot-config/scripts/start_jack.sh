#!/bin/bash
pasuspender -- sleep 4 &
jack_control start
jack_control ds alsa
jack_control dps device hw:HD2
jack_control dps rate 48000
jack_control dps nperiods 20
jack_control dps period 64
a2j_control --ehw
a2j_control --start
cadence &

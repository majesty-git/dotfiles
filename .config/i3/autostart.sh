#!/bin/bash

xrandr --output HDMI-0 --mode 1920x1080 --right-of DP-5
xrandr --output DP-5 --mode 1920x1080 --rate 74.97
nitrogen --restore
~/.config/polybar/launch.sh &
thunar --daemon
polkit-dumb-agent &

#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)
WM_CLASS=$(xprop -id $WM_DESKTOP WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
WM_NAME=$(xprop -id $WM_DESKTOP WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')
LONG_TEXT=$WM_CLASS"($WM_NAME)"
STR=${LONG_TEXT:0:70}
if [ ${#STR} -eq 70 ]; then echo "${STR}...)"; exit
else echo ${STR}
fi
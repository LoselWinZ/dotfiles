#!/bin/bash
screensaver="/tmp/lockimg-$(date +%Y-%m-%dT%HH:%MM:%SS).png"

import -window root $screensaver

magick convert -blur 0x8 $screensaver $screensaver

i3lock -i $screensaver

rm -rf $screensaver

exit  0

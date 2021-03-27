#! /bin/bash

killall -q picom

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

picom --experimental-backends --config ~/.config/picom/picom.conf

#!/bin/bash

# dmenu2 power menu 
#

OPT=$(echo -e "suspend\npoweroff\nreboot" | dmenu -f -h 28 -fn "SourceCodePro-Bold" -x 460 -y 370 -w 360 -nb black -nf white -sb white -sf black )

case $OPT in
	suspend) sudo systemctl suspend   ;;
	poweroff) sudo systemctl poweroff ;;
	reboot) sudo systemctl reboot     ;;
	*) ;;
esac

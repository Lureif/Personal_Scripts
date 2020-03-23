#!/bin/bash

#$STR="used xboxdrv to initialize $1"

case "$1" in
    "$NULL")
	echo "fuck off, you need to specify a controller."
	echo "---> ps3 / shit-troller"
	;;
    "shit-troller")
	xboxdrv --evdev /dev/input/by-id/usb-0079_USB_Gamepad-event-joystick --evdev-absmap ,ABS_X=dpad_x,ABS_Y=dpad_y --evdev-keymap BTN_TRIGGER=x,BTN_THUMB=y,BTN_THUMB2=a,BTN_TOP=b,BTN_TOP2=lb,BTN_PINKIE=rb,BTN_BASE=lt,BTN_BASE2=rt,BTN_BASE3=start,BTN_BASE4=back --mimic-xpad --silent && echo "used xboxdrv to initialize $1"
	;;
    "ps3")
	sudo xboxdrv --silent --detach-kernel-driver && echo "used xboxdrv to initialize $1"
	;;
    "ps4")
	sudo xboxdrv --silent -c ./ps4_map --mimic-xpad && echo "used xboxdrv to initialize $1"
	;;
    *)
	;;
esac

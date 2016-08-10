#! /bin/sh

state=`xinput list-props "ETPS/2 Elantech Touchpad" | grep "Device Enabled" | cut -d ':' -f 2`;

if [ $state == "1" ]; then
	xinput --disable "ETPS/2 Elantech Touchpad";
elif [ $state == "0" ]; then
	xinput --enable "ETPS/2 Elantech Touchpad";
fi

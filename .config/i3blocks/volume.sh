#! /bin/sh

volume=`pamixer --get-volume`;
mute=`pamixer --get-mute`;


if [ $mute == "false" -a $volume -gt 0 ]; then
	color="#00e600";

	if [ $volume -gt 50 ]; then
		icon="";
	else 
		icon="";
	fi

else
	color="#ffff00";
	icon="";
fi

echo "$icon $volume%";
echo "$icon $volume%";
echo "$color";

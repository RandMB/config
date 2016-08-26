#! /bin/sh

volume=`amixer get Master | tail -n 1 | cut -d ' ' -f 7,8`;
level=` echo $volume | cut -d ' ' -f 1 | grep -E -o '[0-9]{1,3}'`;
status=`echo $volume | cut -d ' ' -f 2 | grep -E -o '\w+'`;


if [ $status == "on" ]; then
	color="#00e600";

	if [ $level -ge 50 ]; then
		icon="";
	else 
		icon="";
	fi

elif [ $status == "off" ]; then
	color="#ffff00";
	icon="";
fi

echo "$icon $level%";
echo "$icon $level%";
echo "$color";

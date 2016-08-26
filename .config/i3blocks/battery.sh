#! /bin/sh

battery=`acpi -b | cut -d ' ' -f 3,4,5`;
status=`echo $battery | cut -d ' ' -f 1 | grep -E -o '\w+'`;
level=` echo $battery | cut -d ' ' -f 2 | grep -E -o '[0-9]{1,3}'`;
time=`  echo $battery | cut -d ' ' -f 3 | grep -E -o '[0-9][0-9]:[0-9][0-9]'`;

color="#cccccc";
icon="";
exit_code=0;
if [ $status == "Discharging" ]; then
	color="#ffff00";

	if [ $level -ge 85 ]; then
		icon="";
	elif [ $level -ge 60 ]; then
		icon="";
	elif [ $level -ge 35 ]; then
		icon="";
	elif [ $level -ge 10 ]; then
		icon="";
	else 
		icon="";
		exit_code=33;
	fi

elif [ $status == "Charging" ]; then
	color="#00e600";
fi

if [ -z $time ]; then
	echo "$icon $level%";
	echo "$icon $level%";
else
	echo "$icon $level% ($time)";
	echo "$icon $level%";
fi

echo "$color";
exit $exit_code;

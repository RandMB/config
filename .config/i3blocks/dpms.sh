#! /bin/sh

dpms=`xset -q | grep 'DPMS is Enabled'`; 

if [ -n "$dpms" ]; then
	echo DPMS: on;
	echo DPMS;
	echo "#00e600";
else
	echo DPMS: off;
	echo DMPS;
	echo "#cccccc";
fi

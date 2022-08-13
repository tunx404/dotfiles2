#!/usr/bin/env bash

echo "Power saving $1!"
if [ $1 == "on" ]
then
	cpupower-gui profile 16
	brightnessctl set 50%
	balooctl suspend
	balooctl disable
	insync quit
elif [ $1 == "off" ]
then
	cpupower-gui profile 45
	brightnessctl set 70%
	# balooctl resume
	# balooctl enable
	balooctl suspend
	balooctl disable
	insync start
fi
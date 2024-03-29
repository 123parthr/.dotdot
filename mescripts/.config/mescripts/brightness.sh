#!/bin/bash
bd=/sys/class/backlight/amdgpu_bl0/brightness

bdv=$(cat $bd)

case $1 in
	up)
		echo $(( bdv + 2 )) > $bd
		cat $bd
	;;
	down)
		echo $(( bdv - 2 )) > $bd
		cat $bd
	;;
	*)
	echo "$bdv"
esac

SYNSTATE=$(synclient -l | grep TouchpadOff | awk '{print $3}')

if [ $SYNSTATE = 0 ]; then
	synclient touchpadoff=1
	echo "Touchpad Off"
elif [ $SYNSTATE = 1 ]; then
	echo "Touchpad On"
	synclient touchpadoff=0
else
	echo "Error"
	exit 1
fi

exit 0

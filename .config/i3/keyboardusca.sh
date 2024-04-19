KEYSTATE=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')

if [ $KEYSTATE = "ca" ]; then
	setxkbmap -layout us
elif [ $KEYSTATE = "us" ]; then
	setxkbmap -layout ca
else
	echo "Error"
	exit 1
fi

exit 0

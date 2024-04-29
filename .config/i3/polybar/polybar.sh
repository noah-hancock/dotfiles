polybar-msg cmd quit
killall -q polybar

polybar -q -r cat-up -c ~/.config/polybar/config.ini &

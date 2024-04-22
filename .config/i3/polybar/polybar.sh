polybar-msg cmd quit
killall -q polybar

polybar -q -r cat-up -c ~/.config/polybar/config.ini &
polybar -q -r cat-down -c ~/.config/polybar/config.ini &

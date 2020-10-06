#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x "polybar -r" >/dev/null; do sleep 1; done

# Launch bar1 and bar2

if type "xrandr"; then # I cannot possibly think of a X11 installation without xrandr though
    for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$monitor polybar main &
    done
fi

echo "Bars launched..."

exit 0

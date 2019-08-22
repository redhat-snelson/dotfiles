internal=eDP-1-1
left_extern=DP-2
right_extern=DP-0
mirrored=HDMI-0


xrandr --output "${internal}" --auto
xrandr --output "${left_extern}" --off --left-of "${internal}"
xrandr --output "${right_extern}" --off --right-of "${internal}"
xrandr --output "${mirrored}" --off

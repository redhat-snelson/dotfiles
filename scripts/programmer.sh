internal=DP-0
left=DP-3
right=DP-1

xrandr --output "${internal}" --auto
xrandr --output "${right}" --auto --left-of "${internal}" --rotate left
xrandr --output "${left}" --auto --left-of "${right}" --rotate normal


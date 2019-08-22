internal=DP-0
left_extern=DP-3
right_extern=DP-1
mirrored=HDMI-0

mirrored_hdmi()
{
	local -r resolution=$1
	local -r rate=$2
	xrandr --output "${mirrored}" --mode "${resolution}" --rate "${rate}"
	xrandr --output "${internal}" --mode "1920x1080" --rate "60.02" --same-as "${mirrored}"
	xrandr --output "${left_extern}" --off
	xrandr --output "${right_extern}" --off
}

case "$1" in
"main")
	mirrored_hdmi "1920x1080" "60.00"
	;;
"eng"|"engineering")
	mirrored_hdmi "1920x1080" "60.00"
	;;
"cafe")
	#mirrored_hdmi "1920x1080" "29.97"
	mirrored_hdmi "1920x1080" "60.00"
	;;
"220"|"scrum")
	mirrored_hdmi "1920x1080" "60.00"
	;;
esac


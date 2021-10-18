xmodmap ~/.xmodmap
xbindkeys
xset r rate 180 70
#
dwmblocks &
ibus-daemon -drxR &
greenclip daemon &
# this thing works better
compton &
dunst &
unclutter &
#
spotify &
discord &
st -e "spt" &
#
bgimage set $HOME/Wallpapers/abstract_4.jpg
xsetwacom set $(xsetwacom list | awk '/stylus/{print $8}') MapToOutput 3000x1440+0+0

exec start-dwm

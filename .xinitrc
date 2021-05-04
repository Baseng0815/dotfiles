xmodmap ~/.xmodmap
xbindkeys
xset r rate 220 50
#
dwmblocks &
ibus-daemon -drx &
greenclip daemon &
# # this thing works better
compton &
dunst &
unclutter &
#
spotify &
discord-canary &
st -e "spt" &
#
bgimage set $HOME/Wallpapers/abstract_4.jpg
xsetwacom set $(xsetwacom list | awk '/stylus/{print $8}') MapToOutput 2500x1080+0+0

exec start-dwm

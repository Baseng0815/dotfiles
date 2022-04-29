xmodmap ~/.xmodmap
xbindkeys
xset r rate 180 70
#
dwmblocks &
fcitx5 -dr &
greenclip daemon &
# this thing works better
picom &
dunst &
unclutter &
#
spotify &
discord &
st -e "spt" &
#
bgimage set $HOME/Wallpapers/cowboy_bebop_0.jpg
xsetwacom set $(xsetwacom list | awk '/stylus/{print $8}') MapToOutput 3000x1440+0+0

exec start-dwm

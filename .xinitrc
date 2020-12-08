xmodmap ~/.xmodmap
xbindkeys
xset r rate 220 50

dwmblocks &
ibus-daemon &
picom &
dunst &
unclutter &

spotify &
discord &
st -e "spt" &

setbg $HOME/Wallpapers/rand_15.jpeg
xsetwacom set $(xsetwacom list | awk '/stylus/{print $8}') MapToOutput 2500x1080+0+0

exec start-dwm

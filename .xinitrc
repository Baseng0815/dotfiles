xmodmap ~/.xmodmap
xbindkeys
xset r rate 220 50

# because it sometimes crashes
dwmblocks &
ibus-daemon &
picom &
dunst &
unclutter &
autocutsel &
autocutsel -s PRIMARY &

spotify &
discord &
st -e "spt" &

setbg $HOME/Wallpapers/rand_18.jpg
xsetwacom set $(xsetwacom list | awk '/stylus/{print $8}') MapToOutput 2500x1080+0+0

exec start-dwm

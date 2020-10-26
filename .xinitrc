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

setbg $HOME/Wallpapers/initial_d_0.jpg

exec start-dwm

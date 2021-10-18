export EDITOR=nvim
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# For some reason, path entries are duplicated. Too bad!
typeset -U PATH path
export PATH=$PATH:$HOME/.local/bin:$HOME/scripts:$HOME/scripts/statusbar:$HOME/.ghcup/bin
export PATH=$PATH:/opt/cuda/bin

export QT_STYLE_OVERRIDE=GTK+
# export XDG_CURRENT_DESKTOP=KDE
export CALIBRE_USE_DARK_PALETTE=1

# https://bbs.archlinux.org/viewtopic.php?id=173675
export GTK_IM_MODULE=xim #Fix for Chrome
export QT_IM_MODULE=xim #Not sure if this works or not, but whatever (edit: IT DOES!)
export XMODIFIERS=@im=ibus

# fix reparenting issue of java apps when using tiling wm
export _JAVA_AWT_WM_NONREPARENTING=1

# export CC=/usr/bin/clang
# export CXX=/usr/bin/clang++

export LFS=/home/bastian/lfs
export LFS_TGT=$(uname -m)-lfs-linux-gnu
export PATH=$LFS/tools/bin:$PATH

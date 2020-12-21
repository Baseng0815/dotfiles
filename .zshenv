export EDITOR=nvim
export LD_LIBRARY_PATH=/usr/local/lib

# For some reason, path entries are duplicated. Too bad!
typeset -U PATH path
export PATH=$PATH:$HOME/.local/bin:$HOME/scripts:$HOME/scripts/statusbar

export QT_STYLE_OVERRIDE=Fusion

# fix reparenting issue of java apps when using tiling wm
export _JAVA_AWT_WM_NONREPARENTING=1

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

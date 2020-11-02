export EDITOR=nvim
export LD_LIBRARY_PATH=/usr/local/lib

# For some reason, path entries are duplicated. Too bad!
typeset -U PATH path
export PATH=$PATH:$HOME/.local/bin:$HOME/scripts

export QT_STYLE_OVERRIDE=gtk2

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

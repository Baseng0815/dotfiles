# Setup fzf
# ---------
if [[ ! "$PATH" == */home/bastian/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/bastian/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/bastian/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/bastian/.fzf/shell/key-bindings.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.zsh/oh-my-zsh"
export FrameworkPathOverride="/lib/mono/4.5"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to not display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#441144,bg=cyan,bold,underline"
ZSH_AUTOSUGGEST_USE_ASYNC="this can be anything"

# command aliases
alias z='zathura'
alias m='myougiden' # japanese dictionary
alias vim='nvim'
alias fucking='sudo'
alias ls='exa'
alias l='exa -ahl'
alias notes='vim ~/notes'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias nb='newsboat'

# -e for editor
alias nnn="nnn -e"
alias cp="cp -v"
alias lg="lazygit"
alias mail="neomutt"
alias po="poweroff"
alias re="reboot"

bindkey -v
bindkey '^@' autosuggest-accept
bindkey -M viins 'jk' vi-cmd-mode

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git sudo command-not-found zsh-autosuggestions zsh-syntax-highlighting history-substring-search fzf)

source $ZSH/oh-my-zsh.sh
source ~/.aliases.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

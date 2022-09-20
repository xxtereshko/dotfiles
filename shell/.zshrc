export ZSH="$HOME/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:$PATH"

alias fla="cd ~/flash"
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias zshconfig="code ~/.zshrc"
alias pj="cd ~/workspace/projects/"
alias c.="code ."
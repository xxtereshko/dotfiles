export PATH="/usr/local/sbin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias fla="cd ~/flash"
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias zshconfig="code ~/.zshrc"
alias pj="cd ~/workspace/projects/"
alias c.="code ."
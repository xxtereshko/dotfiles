# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/node@16/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure

plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias spst=speedtest
alias c.="code ."
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias copyssh="pbcopy < ~/.ssh/id_rsa.pub"
alias zshconfig="code ~/.zshrc"
alias pj="cd ~/workspace/projects"
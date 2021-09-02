export PATH="/usr/local/opt/node@14/bin:$PATH"

export ZSH="/Users/maximtereshko/.oh-my-zsh"
ZSH_THEME=""

# Pure cfg
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
zstyle ':prompt:pure:prompt:*' color white

DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=13

plugins=(git zsh-z)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=ru_RU.UTF-8

# Example aliases
alias zshconfig="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# CURRENT BRANCH

function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '%F{green}['$branch']%f'
  fi
}

# CUSTOM CFG

setopt PROMPT_SUBST
PROMPT="
%F{blue}%~%f "'$(git_branch_name)'"
👽 :: "

# GIT

alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias 🍺="git checkout -b drunk"

# NPM/YARN

alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nrd='npm run dev'
alias nis='npm i -S'

alias ya='yarn add'
alias yi='yarn install'
alias yd='yarn dev'
alias ys='yarn start'
alias yb='yarn start'

# File system aliases

alias ls='ls -G'
alias l='ls -l'
alias ll='ls -lA'

alias o="open ."
alias a='code .'
alias c='code .'

alias cl='clear'
alias gg='exit'

# MISC

function mkcd() {
	mkdir $1 && cd $1
}
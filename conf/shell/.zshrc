# node@16
export PATH="/usr/local/opt/node@16/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Custom prompt
PS1="%1~ > "


### ALIASES ###

alias pj='cd ~/projects'
alias oss='open ~/screenshots'
alias ss='cd ~/screenshots'
alias zshconfig='code ~/.zshrc'

## Common ##

# List directory
alias l='ls -lhG'
alias ll='ls -lahG'

# Files
alias cp='cp -i'
alias mv='mv -i'
alias rap="rm -rf build coverage node_modules package-lock.json && npm i"
alias rbn="rm -rf build node_modules"
alias rm='rm -i'
alias rmrf='rm -rf'
alias rnm="rm -rf node_modules"

# Directories
alias -- -="cd -"
alias ..='cd ../'
alias ...='cd ../../'

# Misc
alias cl='clear'

## Packages ##

# VSCode
alias c.='code .'

# Yarn
alias y="yarn"
alias ya="yarn add" # +package@version
alias yad="yarn add -D" # +package@version
alias yade="yarn add -D -E" # +package@version
alias yase="yarn add -S -E" # +package@version
alias yb="yarn build"
alias yc="yarn create"
alias ycc="yarn cache clean"
alias yd="yarn dev"
alias yga="yarn global add"
alias ygl="yarn global list" #list global packages installed
alias ygls="yarn global list"
alias ygrm="yarn global remove"
alias yout="yarn outdated"
alias yr="yarn remove" # +package@version
alias ys="yarn start"
alias yt="yarn test"

# Git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git clone'
alias gcmsg='git commit -m'
alias gp='git push'
alias gra='git remote add'

# Android Emulator
alias avd="emulator -avd Pixel_3a_API_33_x86_64 -no-boot-anim -no-audio -no-snapshot-load"

# Brew
alias brewcup="brew upgrade --cask --greedy" # update all casks
alias brewcupl="brew outdated --cask --greedy --verbose" # list updatable casks
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"


### Functions ###

# Create directory and enter
function mkcd
{
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}
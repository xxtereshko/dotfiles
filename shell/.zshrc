export PATH="/usr/local/sbin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

# autoload -U promptinit; promptinit
# prompt pure

eval "$(rbenv init - zsh)"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"


alias zshconfig="code ~/.zshrc"
alias pj="cd ~/workspace/projects/"
alias c.="code ."


# git
alias gcg="git config --edit --global"
alias gcl="git config --edit --local"
alias guc="git reset --hard HEAD" # undo changes and preserve untracked files
alias gcc="git clean -f -d -x" # clean ALL changes and remove untracked files
alias gcae="git commit --allow-empty -m " # <message>

# Brew
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias brewcup="brew upgrade --cask --greedy" # update all casks
alias brewcupl="brew outdated --cask --greedy --verbose" # list updatable casks

# Docker
alias dcu="docker-compose up"
alias dcr="docker-compose run"
alias dce="docker-compose exec"

# Npm
alias rnm="rm -rf node_modules"
alias rbn="rm -rf build node_modules"
alias rap="rm -rf build coverage node_modules package-lock.json && npm i"
alias cap="clean && rap"

alias npk="npx npkill" #clean unused node_modules
alias nkp="npx kill-port " # +portnumber
alias nfk="npx fkill-cli" # +[<pid|name|:port> …] #kill processes

alias nlg="npm list -g --depth 0" #list global packages installed

alias ni="npm i"
alias nis="npm i -S " # +package@version
alias nise="npm i -S -E " # +package@version
alias nid="npm i -D " # +package@version
alias nide="npm i -D -E " # +package@version
alias nr="npm r " # +package@version

alias nrb="npm run build"
alias nrbd="npm run build:dev"
alias nrbq="npm run build:qa"
alias nrs="npm run start"
alias nrsd="npm run start:dev"
alias nrsq="npm run start:qa"
alias nrt="npm run test"
alias nrtc="npm run test:c" #test with coverage

alias np="npm run build && npm publish"
alias nu="npm unpublish " # +package@version

# Yarn
alias ygl="yarn global list" #list global packages installed

alias y="yarn"
alias yc="yarn create"
alias ya="yarn add " # +package@version
alias yase="yarn add -S -E " # +package@version
alias yad="yarn add -D " # +package@version
alias yade="yarn add -D -E " # +package@version
alias yr="yarn remove " # +package@version
alias yb="yarn build"
alias ys="yarn start"
alias yd="yarn dev"
alias yt="yarn test"

# Misc
alias h="history -10"
alias hc="history -c"
alias hg="history | grep "
alias cputemp="sudo powermetrics --samplers smc |grep -i \"CPU die temperature\""

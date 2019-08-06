whoami
date
uptime

# iterm
function tabtitle {
    echo -ne "\033]0;"$*"\007"
}

export LDFLAGS=-L/usr/local/opt/openssl/lib # https://github.com/PyMySQL/mysqlclient-python/issues/131
alias pird="pip install -r requirements-dev.txt"
alias pir="pip install -r requirements.txt"
alias nrd="npm run dev"
alias mr="make run"

# ssh key
eval `ssh-agent -s`
keychain ~/.ssh/id_rsa # brew install keychain
alias gkey="ssh-add ~/.ssh/id_rsa"

# git
alias hack="git pull --rebase"
alias ship="make lint && make type-check && make test && git push"
alias shipj="npm run lint && git push"
alias gb="git branch"
alias gco="git checkout "
alias gcom="git checkout master"
alias gcod="git checkout development"
alias gaa="git add -A"
alias gp="git pull"
alias gcaa="git commit --amend -C head"
alias gic="git commit -m"
alias gfile="git show --name-only"
alias gitloc="git ls-files | xargs wc -l"
alias gs="git status"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias glog="git log --oneline --decorate --color --graph"
# brew install getantibody/tap/antibody # package manager
# antibody bundle caarlos0/open-pr kind:path # install git open-pr
# git config --global alias.pr open-pr
source <(antibody init)
export PATH="/Users/linda/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-caarlos0-SLASH-open-pr:$PATH"

# other
alias profile="s ~/.bash_profile"
alias profilesrc="source ~/.bash_profile"
alias rep="cd ~/repositories"
alias note="cd ~/repositories/notes ; s notes.txt ; cd -"
alias hi="ping 8.8.8.8"
alias hai="traceroute 8.8.8.8"
alias chrome="open -a /Applications/Google\\ Chrome.app/ "
alias shrug="echo \"¯\_(ツ)_/¯\" | pbcopy"
alias histpry="history"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
alias news="wget -O - hackurls.com/ascii"
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks
alias psa="ps aux | grep -i "
alias pug="ps aux | grep -i "
alias s="open -a /Applications/Sublime\ Text.app/ "
alias tar=$(which gtar) # brew install gnu-tar
alias tarthis="tar -pczf "
alias untar="tar -zxvf "

# history
export HISTCONTROL=erasedups
export HISTSIZE=5000
export ZSH=/Users/$(whoami)/.oh-my-zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


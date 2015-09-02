
# --------------------

export GOPATH="$HOME/.go"
export GREP_OPTIONS='--color=auto'
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$PATH:~/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bc/release-options/bin"
export PS1="\e[0;32m\D{%T}|\h:\w$ \e[m"

alias branch="git for-each-ref --sort=-committerdate refs/heads/ | head"
alias note="cd ~/repositories/notes ; s bar.txt ; cd -"
alias bcmig='time bundle exec rake db:drop:all db:create:all db:migrate db:test:prepare && bundle exec rake parallel:drop parallel:create parallel:prepare && bundle exec rake simplecov'
alias pdcp='rake parallel:drop parallel:create parallel:prepare'
alias bctp='rake db:test:prepare && rake parallel:prepare'
alias bctpl='rake db:test:prepare && rake parallel:drop parallel:create parallel:prepare'
alias bcfr='time bundle exec rake fast:rspec'

alias agent="eval `ssh-agent`"
alias bi="bundle install --binstubs"
alias exr="cd ~/exercism/ruby"
alias gaa="git add -A"
alias gb="go fmt && go install && ./../../bin/mez"
alias gca="git commit --amend -C head"
alias gcm="git commit -m"
alias gf="go fmt ../mez/..."
alias gfile="git show --name-only"
alias gitloc="git ls-files | xargs wc -l"
alias gs="git status"
alias gt="go fmt ; go test"
alias gtc="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"
alias gtr="go fmt ; go test -run "
alias loc="find . -name "*" -print | grep -v .vendor | xargs wc -l"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias mez="cd $GOPATH/src/mez"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
alias news="wget -O - hackurls.com/ascii"
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks
alias profile="s ~/.bash_profile"
alias profilesrc="source ~/.bash_profile"
alias psa="ps aux | grep -i "
alias pug="ps aux | grep -i "
alias rep="cd ~/repositories"
alias s="open -a /Applications/Sublime\ Text.app/ "
alias st="git status"
alias tar=$(which gtar) # brew install gnu-tar
alias tarthis="tar -pczf "
alias untar="tar -zxvf "
alias updatedb="/usr/libexec/locate.updatedb"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"
alias vrf="ruby ~/.view_random_file_from_git.rb"

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# $PROMPT_COMMAND;history -a; history -n # from http://superuser.com/questions/37576/can-history-files-be-unified-in-bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GREP_OPTIONS='--color=auto'

alias bi="bundle install"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"
alias agent="eval `ssh-agent`"
alias s="open -a /Applications/Sublime\ Text.app/ "
export PS1="\h:\w$ "
source ~/bt/system-scripts/pairing_stations/aliases
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bin"

alias exr="cd ~/exercism/ruby"
alias vrf="ruby ~/.view_random_file_from_git.rb"

alias gt="go fmt ; go test"
alias gtr="go fmt ; go test -run "
alias gf="go fmt ../mez/..."
alias gb="go fmt && go install && ./../../bin/mez"
alias gtc="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"
alias mez="cd $GOPATH/src/mez"

alias st="git status"
alias gs="git status"
alias gaa="git add -A"
alias gcm="git commit -m"
alias gca="git commit --amend -C head"

alias loc="find . -name "*" -print | grep -v .vendor | xargs wc -l"
alias gitloc="git ls-files | xargs wc -l"
alias untar="tar -zxvf "
alias tarthis="tar -pczf "
alias updatedb="/usr/libexec/locate.updatedb"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
alias news="wget -O - hackurls.com/ascii"
alias psa="ps aux | grep -i "
alias pug="ps aux | grep -i "
alias profile="s ~/.bash_profile"
alias profilesrc="source ~/.bash_profile"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias gfile="git show --name-only"
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks


alias rep="cd ~/repositories"

export GROOVY_HOME=/usr/local/opt/groovy/libexec

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

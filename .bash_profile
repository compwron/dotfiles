<<<<<<< HEAD
alias wifion="networksetup -setairportpower airport on"
alias wifioff="networksetup -setairportpower airport off"
alias wifipassof="security find-generic-password -wa "
alias savednetworks="read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences | grep SSIDString"
alias wifis="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport scan"

if [ -d "<path-to-sdk>/platform-tools" ] ; then
  export PATH="<path-to-sdk>/platform-tools:$PATH"
fi

alias note="s ~/repositories/notes/note.txt"
alias and="s /Users/compwron/repositories/compwron.github.io/andconf.txt"

# eval "$(rbenv init -)"
alias mute="sudo osascript -e 'set Volume 0'"
alias chat="echo 'yeah you should implement that'"
# ompwron:~/repositories/compwron.github.io$ calendar
# calendar: can't open calendar file "calendar": No such file or directory (2)
# compwron:~/repositories/compwron.github.io$ cal
#      April 2015
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30

# compwron:~/repositories/compwron.github.io$ which cal
# /usr/bin/cal
# compwron:~/repositories/compwron.github.io$ cal -h
# cal: illegal option -- h
# usage: cal [-jy] [[month] year]
#        cal [-j] [-m month] [year]
#        ncal [-Jjpwy] [-s country_code] [[month] year]
#        ncal [-Jeo] [year]
# compwron:~/repositories/compwron.github.io$

alias pos="cd ~/bc/pos-service"

function bt-tmux-start {
  tmux -S /tmp/$1 new-session -s $1 -d
  chmod 777 /tmp/$1
  tmux -S /tmp/$1 attach -t $1
}
=======
>>>>>>> 49db1af3352469fc3da4528d7143412de533891d

# --------------------

<<<<<<< HEAD
function bt-make-tmux-public() {
  if [ -z "$TMUX" ]; then
    echo "must be run from inside tmux with \$TMUX set"
  else
    tmux_socket=$(echo $TMUX | cut -d',' -f1)
    chmod 777 $tmux_socket
    tmux refresh-client -S
  fi
}

alias agent="eval `ssh-agent`"
alias s="open -a /Applications/Sublime\ Text.app/ "
export PS1="compwron:\w$ "
source ~/bt/system-scripts/pairing_stations/aliases
=======
>>>>>>> 49db1af3352469fc3da4528d7143412de533891d
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
<<<<<<< HEAD
alias untar="tar -zxvf "
alias tarthis="tar -pczf "
alias updatedb="/usr/libexec/locate.updatedb"
=======
alias gs="git status"
alias gt="go fmt ; go test"
alias gtc="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"
alias gtr="go fmt ; go test -run "
alias loc="find . -name "*" -print | grep -v .vendor | xargs wc -l"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias mez="cd $GOPATH/src/mez"
>>>>>>> 49db1af3352469fc3da4528d7143412de533891d
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



# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# $PROMPT_COMMAND;history -a; history -n # from http://superuser.com/questions/37576/can-history-files-be-unified-in-bash

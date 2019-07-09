whoami
date
uptime

# reference
# alias show_branches_with_dates="for k in `git branch -r | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r"

# git
alias gaa="git add -A"
alias gcaa="git commit --amend -C head"
alias gic="git commit -m"
alias gfile="git show --name-only"
alias gitloc="git ls-files | xargs wc -l"
alias gs="git status"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias glog="git log --oneline --decorate --color --graph"

# other
alias profile="s ~/.bash_profile"
alias profilesrc="source ~/.bash_profile"
alias up="cd .." # elham
alias rep="cd ~/repositories"
alias note="cd ~/repositories/notes ; s notes.txt ; cd -"
alias hi="ping 8.8.8.8"
alias hai="traceroute 8.8.8.8"
alias chrome="open -a /Applications/Google\\ Chrome.app/ "
alias ll="ls -l"
alias shrug="echo \"¯\_(ツ)_/¯\" | pbcopy"
alias serial="ioreg -l | grep IOPlatformSerialNumber"
alias histpry="history"
alias be="bundle exec "
alias agent="eval `ssh-agent`"
alias bi="bundle install"
alias bib="bundle install --binstubs"
alias exr="cd ~/exercism/ruby"
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

# rvm
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

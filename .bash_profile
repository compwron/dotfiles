alias s="open -a /Applications/Sublime\ Text.app/ "
export PS1="\h:\w$ "
source ~/bt/system-scripts/pairing_stations/aliases
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

alias gt="go fmt ; go test"
alias gtr="go fmt ; go test -run "
alias gf="go fmt ../mez/..."
alias gb=alias gb="go fmt && go install && ./../../bin/mez"
alias mez="cd $GOPATH/src/mez"

alias st="git status"
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


alias iap="cd ~/linda-rep/iap"
alias rep="cd ~/linda-rep"

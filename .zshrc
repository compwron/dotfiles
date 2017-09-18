echo $0
echo whoami
echo date
uptime

# reference
# alias show_branches_with_dates="for k in `git branch -r | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r"

# git
alias gitlog1="git log --oneline -3" # james
alias gitlog2="git log --oneline -3" # james
alias gitlog3="git log --oneline -3" # james
alias gitlog5="git log --oneline -3" # james
alias gitlog10="git log --oneline -3" # james
alias g="git " # Beto
alias ga="git add" # James
alias g="git " # Osa
alias gpr="git pull --rebase"
alias gup="git pull --rebase"
alias branch="git for-each-ref --sort=-committerdate refs/heads/ | head"
alias st="git status"
alias gaa="git add -A"
alias gca="git commit --amend -C head"
alias gcm="git commit -m"
alias gfile="git show --name-only"
alias gitloc="git ls-files | xargs wc -l"
alias gs="git status"
alias gd="git diff"
alias gst="git status" # Tom
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias glog="git log --oneline --decorate --color --graph"

# project
alias boom="git pull --rebase && ./gradlew && git push"
alias ptp="git pull --rebase && ./gradlew && git push" #james
alias gw="./gradlew" # for Elham
alias gwr="./gradlew run"
alias rin="./gradlew runintegration"
alias server="./gradlew bootRun"
alias menudate="echo 2017-01-01T00:00:00.000Z | pbcopy"

# so I can do `cf_logs mobile-bff` and I get the dev logs
cf_logs() {
  cf apps | grep "$@" | cut -d' ' -f 1 | grep "$@" | xargs -I{} cf logs {} --recent
}

# or `cf_env cloud-config` and I get the env for the sccs server
cf_env() {
  cf apps | grep "$@" | cut -d' ' -f 1 | grep "$@" | xargs -I{} cf env {}
}

# other
alias profile="s ~/.zshrc"
alias profilesrc="source ~/.zshrc"
alias findignored="grep -rin \"@Ignore\" . -A1 | grep -v workspace.xml"
alias up="cd .." # elham
alias rep="cd ~/repositories"
alias retro="cd ~/repositories/notes ; s retro.txt ; cd -"
alias dp="cd ~/repositories/dp" # dailyprogrammer
alias note="cd ~/repositories/notes ; s notes.txt ; cd -"
alias blog="s ~/repositories/notes/blog.txt"
alias todo="s ~/repositories/notes/todo.txt"
alias tw="git init ; gaa ; gcm 'init' ; touch review_notes.txt"
alias hi="ping 8.8.8.8"
alias hai="traceroute 8.8.8.8"
alias bigfile="find . -regex '\./src/main/.*\.java' | xargs wc -l | sort -r" # thanks saleem
alias chrome="open -a \"Google Chrome\" \"$*\""
alias ll="ls -l"
alias shrug="echo \"¯\_(ツ)_/¯\" | pbcopy"
alias e="echo \"é\" | pbcopy"
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
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"

# history
export HISTCONTROL=erasedups
export HISTSIZE=5000
export ZSH=/Users/$(whoami)/.oh-my-zsh

# zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# exports
export ANDROID_HOME="/Users/$(whoami)/Library/Android/sdk/"
export BUNDLER_EDITOR="open -a /Applications/Sublime\ Text.app/ "
export GOPATH="$HOME/.go"
export GREP_OPTIONS='--color=auto'
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=$PATH:/usr/local/sbin
export PATH="$PATH:~/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH" # If you really need to use it as "tar", you can add a "gnubin" directory to your PATH from your bashrc like:
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/qt5/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# python autoenv
source /usr/local/opt/autoenv/activate.sh

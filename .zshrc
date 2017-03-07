uptime

alias gitme="git config user.email compiledwrong@gmail.com && git config user.name cmpwr"
gitme

export HISTCONTROL=erasedups
export HISTSIZE=5000
export ZSH=/Users/lgoldste/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias twu="cd ~/TWU"
alias tu="s ~/repositories/twu-notes.txt"
alias tw="git init ; gaa ; gcm 'init' ; touch linda_notes.txt"

alias gwr="./gradlew run"

cf_logs() {
  cf apps | grep "$@" | cut -d' ' -f 1 | grep "$@" | xargs -I{} cf logs {} --recent
}

cf_env() {
  cf apps | grep "$@" | cut -d' ' -f 1 | grep "$@" | xargs -I{} cf env {}
}

# Duda:
# so I can do `cf_logs mobile-bff` and I get the dev logs
# or `cf_env cloud-config` and I get the env for the sccs server

alias ga="git add"
alias g="git " # osa
alias gw="./gradlew" # for Elham
alias gpr="git pull --rebase" #Elham
alias boom="git pull --rebase && ./gradlew && git push"

alias hi="ping 8.8.8.8"
alias hai="traceroute 8.8.8.8"

alias bigfile="find . -regex '\./src/main/.*\.java' | xargs wc -l | sort -r" #thanks saleem
export ANDROID_HOME="/Users/lgoldste/Library/Android/sdk/"
alias rin="./gradlew runintegration"
alias da="rm -rf ~/.safe-commit-hook ; rm -rf .git/hooks ; rm -rf .safe-commit-hook"
alias server="./gradlew bootRun"

export BUNDLER_EDITOR="open -a /Applications/Sublime\ Text.app/ "

export NVM_DIR="/Users/lgoldstein/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# exports

export GOPATH="$HOME/.go"
export GREP_OPTIONS='--color=auto'
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH=$PATH:/usr/local/sbin
export PATH="$PATH:~/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bc/release-options/bin"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH" # If you really need to use it as "tar", you can add a "gnubin" directory to your PATH from your bashrc like:

export JAVA_HOME=$(/usr/libexec/java_home)

alias chrome="open -a \"Google Chrome\" \"$*\""
alias ll="ls -l"
alias shrug="echo \"¯\_(ツ)_/¯\" | pbcopy"
alias e="echo \"é\" | pbcopy"
alias rewriteallgit="git filter-branch --commit-filter '
                GIT_AUTHOR_NAME=\"cmp wr\";
                GIT_AUTHOR_EMAIL=\"compiledwrong@gmail.com\";
                git commit-tree \"$@\";
        ' HEAD"

alias serial="ioreg -l | grep IOPlatformSerialNumber"
alias pdcp='rake parallel:drop parallel:create parallel:prepare'
alias histpry="history"
alias be="bundle exec "
alias branch="git for-each-ref --sort=-committerdate refs/heads/ | head"
alias note="cd ~/repositories/notes ; s notes.txt ; cd -"
alias blog="s ~/repositories/notes/blog.txt"
alias todo="s ~/repositories/notes/todo.txt"

alias agent="eval `ssh-agent`"
alias bi="bundle install"
alias bib="bundle install --binstubs"
alias exr="cd ~/exercism/ruby"
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
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
alias news="wget -O - hackurls.com/ascii"
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks
alias profile="s ~/.zshrc"
alias profilesrc="source ~/.zshrc"
alias psa="ps aux | grep -i "
alias pug="ps aux | grep -i "
alias rep="cd ~/repositories"
alias s="open -a /Applications/Sublime\ Text.app/ "
alias st="git status"
alias tar=$(which gtar) # brew install gnu-tar
alias tarthis="tar -pczf "
alias untar="tar -zxvf "
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"
alias ego="log | grep -i linda | wc -l"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/qt5/bin:$PATH"

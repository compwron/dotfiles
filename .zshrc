
export BUNDLER_EDITOR="open -a /Applications/Sublime\ Text.app/ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# exports

export GOPATH="$HOME/.go"
export GREP_OPTIONS='--color=auto'
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$PATH:~/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bc/release-options/bin"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH" # If you really need to use it as "tar", you can add a "gnubin" directory to your PATH from your bashrc like:
export PS1="\t|\w: "
export JAVA_HOME=$(/usr/libexec/java_home)

alias ll="ls -l"
alias shrug="echo \"¯\_(ツ)_/¯\" | pbcopy"
alias rewriteallgit="git filter-branch --commit-filter '
                GIT_AUTHOR_NAME=\"cmp wr\";
                GIT_AUTHOR_EMAIL=\"compiledwrong@gmail.com\";
                git commit-tree \"$@\";
        ' HEAD"
alias gitme="git config user.email compiledwrong@gmail.com && git config user.name cmpwr"
alias serial="ioreg -l | grep IOPlatformSerialNumber"
alias pdcp='rake parallel:drop parallel:create parallel:prepare'
alias histpry="history"
alias be="bundle exec "
alias branch="git for-each-ref --sort=-committerdate refs/heads/ | head"
alias note="cd ~/repositories/notes ; s notes.txt ; cd -"

alias agent="eval `ssh-agent`"
alias bi="bundle install --binstubs"
alias exr="cd ~/exercism/ruby"
alias gaa="git add -A"
alias gca="git commit --amend -C head"
alias gcm="git commit -m"
alias gfile="git show --name-only"
alias gitloc="git ls-files | xargs wc -l"
alias gs="git status"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
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
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"


# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# $PROMPT_COMMAND;history -a; history -n # from http://superuser.com/questions/37576/can-history-files-be-unified-in-bash



# tag on commandline
export PS1="\[\033[\033[0;94m\]\h:\w$ \[\033[0m\]"

export CATALINA_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=1233"
# export PATH="$PATH:/usr/local/share/npm/lib/node_modules/grunt-cli/bin" # for jasmine / grunt dependencies
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.42/libexec # this is a hack
export PATH="$PATH:~/bin"
export PATH="$PATH:/usr/local/opt/"

# Tools
alias loc="find . -name "*" -print | xargs wc -l"
alias gitloc="git ls-files | xargs wc -l"
alias rep="cd ~/repositories"
alias debug="export CATALINA_OPTS=\"-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=1233\""
alias itunes="open -a /Applications/iTunes.app/"
alias untar="tar -zxvf "
alias tarthis="tar -pczf "
alias updatedb="/usr/libexec/locate.updatedb"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2" 
alias news="wget -O - hackurls.com/ascii"
alias psa="ps aux | grep -i "
alias pug="ps aux | grep -i "
alias profile="sublime ~/.bash_profile"
alias profilesrc="source ~/.bash_profile"
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks

# Sublime
alias sublime='open -a "Sublime Text 2.app"'
alias s='sublime' 

# SVN
alias svndiff='svn diff -x --ignore-all-space | view -c ":set filetype=diff" -' 
alias svnrup='for i in `find . -mindepth 1 -maxdepth 1 -type d | grep -v .svn`; do svn up $i; done' # recursive update
alias svnrlog='for i in `find . -mindepth 1 -maxdepth 1 -type d | grep -v .svn`; do svn log --limit=5 $i; done' # recursive svn log
alias svn-log="svn log | more"

# Git
alias gca="git commit --amend -C head"
alias gcm="git commit -m "
alias gaa="git add . && git add -A"
alias gre="git reset HEAD --hard"
alias log="git log --pretty=format:'%Cgreen%ad%Creset %C(yellow)%h%Creset%C(yellow)%d%Creset %s %C(cyan)[%an]%Creset %Cred(%ar)%Creset' --date=short --graph"
alias st="git status"
alias gfile="git show --name-only"

# Git-SVN
alias gspull="git svn rebase"
alias gspush="git svn dcommit"

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# $PROMPT_COMMAND;history -a; history -n # from http://superuser.com/questions/37576/can-history-files-be-unified-in-bash

disable_proxy () {
  export http_proxy=""
  export https_proxy=""
  export ftp_proxy=""
  export no_proxy=""
}

source ~/.rvm/scripts/rvm

# alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


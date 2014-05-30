alias loc="find . -name "*" -print | xargs wc -l"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

alias rep="cd ~/repositories"
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
alias jmeter="/usr/lib/apache-jmeter-2.9/bin/jmeter.sh"
alias outlook="open -a \"/Applications/Microsoft Office 2011/Microsoft Outlook.app\""
alias lync="open -a \"/Applications/Microsoft Lync.app\""
alias push="gspull && gradle testAll && gspush"
alias pushoffline="gspull && gradle testAll --offline && gspush" # for when artifactory is down
alias onetest="./gradlew functionalTest -PfunctionalTestTag=@now"
alias debug="export CATALINA_OPTS=\"-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=1233\""
export CATALINA_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=1233"
export PATH="$PATH:/usr/local/share/npm/lib/node_modules/grunt-cli/bin" # for jasmine / grunt dependencies

export ANT_HOME="/usr/local/apache-ant-1.9.3"
export PATH=$PATH:$ANT_HOME/bin

# SQLDeveloper
# cd /Applications/SQLDeveloper.app/Contents/Resources/sqldeveloper/sqldeveloper/bin
# bash ./sqldeveloper >/tmp/sqldeveloper-startup-`uuidgen`.log

# tag on commandline
PS1="linda@TW:\u\w: "

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

alias report="pairsee -r . -c ../pairSeeConfig.yml -a 2014-2-1 >> linda.txt ; pairsee -r . -c ../pairSeeConfig.yml -a 2014-2-1 -d >> linda.txt ; pairsee -r . -c ../pairSeeConfig.yml -a 2014-2-1 -s >> linda.txt"

# Git-SVN
alias gspull="git svn rebase"
alias gspush="git svn dcommit"

# PATH stuff
alias path='echo -e ${PATH//:/\\n}' # view $PATH with linebreaks
export GRADLE_HOME=/usr/local/Cellar/gradle/1.2
export PATH="$PATH:$GRADLE_HOME" 
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.42/libexec # this is a hack
export PATH="/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/mysql/bin:$MAC_MYSQL:/Library/mongodb-osx-i386-1.8.0/bin/:/opt/local/bin:/opt/local/sbin:/Developer/usr/bin:~/repositories/mozilla-central/obj-x86_64-apple-darwin10.7.0/dist/Nightly.app/Contents/MacOS"
export PATH="$PATH:~/bin"
export PATH="$PATH:~/bin/AWS-ElasticBeanstalk-CLI-2.3.1/eb/macosx/python2.7/"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export PATH="$PATH:/usr/local/opt/"
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:/Applications/LilyPond.app/Contents/Resources/bin/ # lilypond latex for music


# Tools
alias startSonar="/usr/lib/sonarqube-4.0/bin/macosx-universal-64/sonar.sh start"
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

# Sublime
alias sublime='open -a "Sublime Text 2.app"'
alias s='sublime' 

# Environment variables
# export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_35-b10-428.jdk/Contents/Home/ # ugh. use jdk.io
export JUNIT_HOME=/usr/share/java/junit-4.8.2/
export CLASSPATH=$JUNIT_HOME/junit.jar
export MAC_MYSQL=/usr/local/mysql/bin
export GROOVY_HOME=/usr/local/Cellar/groovy/1.8.1/libexec


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

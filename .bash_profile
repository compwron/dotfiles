alias serial="ioreg -l | grep IOPlatformSerialNumber"
# eval $(docker-machine env default) # Error checking TLS connection: Host is not running
alias pdcp='rake parallel:drop parallel:create parallel:prepare'
alias histpry="history"

export BUNDLER_EDITOR="open -a /Applications/Sublime\ Text.app/ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/lgoldstein/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


alias brep="cd ~/bc/breadcrumb-reports"
alias be="bundle exec "
alias opentable="rep ; cd notes ; s opentable_notes.txt"
alias branch="git for-each-ref --sort=-committerdate refs/heads/ | head"

alias bspec="rspec ./spec/jobs/background_bootstrap_spec.rb && rspec ./spec/integration/api/v1/venues_spec.rb && rspec ./spec/integration/api/v1/restaurants_spec.rb:353"
# pos-service
alias uat="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:uat console:rails"
alias uatshell="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:uat console:shell"
alias perf="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:perf console:rails"
alias perfshell="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:perf console:shell"
alias perfmysql="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:perf console:mysql"
alias perf2="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:perf2 console:rails"
alias perfshell2="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:perf2 console:shell"
alias staging="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:staging console:rails"
alias stagingshell="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:staging console:shell"
alias production="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:production console:rails"
alias productionshell="cd ~/bc/mos-deploy && git pull && bin/cap pos-service:app:production console:shell"

# alias bcmr='mysql.server stop && mysql.server start --sql-mode="NO_ENGINE_SUBSTITUTION"' # does not work - maybe the quotes are wrong?
# alias bcmss='mysql.server start --sql-mode="NO_ENGINE_SUBSTITUTION"' # does not work - maybe the quotes are wrong?

alias badtest="cd ~/repositories/notes ; s badtests.txt ; cd -"
alias note="cd ~/repositories/notes ; s bar.txt ; cd -"
alias outage="cd ~/repositories/notes ; s linda_outage_playbook.txt ; cd -"
alias oldnote="cd ~/repositories/notes ; s old_bar.txt ; cd -"
alias pnote="cd ~/repositories/notes ; s pos-note.txt ; cd -"

# breadcrumb database migration switch branches etc
alias bcmig='time bundle exec rake db:migrate db:test:prepare && bundle exec rake parallel:drop parallel:create parallel:prepare && bundle exec rake simplecov'

alias bctp='rake db:test:prepare && rake parallel:prepare'
alias bctpl='rake db:test:prepare && rake parallel:drop parallel:create parallel:prepare'
alias bcfr='time bundle exec rake fast:rspec'
alias bcda='echo WARNING_this_will_take_40min ; rake db:drop:all ; time bundle exec rake db:load:staging'

# pos-service
alias pos="cd ~/bc/pos-service"
alias posd="cd ~/bc/pos-service-deploy"
alias pos2="cd ~/bc/2_pos_service"
alias pospull="cd ~/bc/pos-service ; git pull"
alias pos-setup="rails runner ~/bc/local_pos_service_setup/setup.rb"
alias splunk="cd ~/repositories/notes ; s queries.txt ; cd -"
alias ci="open https://notes.dropbox.com/POS-Service-CI-flakiness-June-2015-0Yq74vnh2QI"
alias retro="cd ~/repositories/notes ; s retro_notes.txt ; cd -"
alias ego="log | grep lgold | wc -l"
alias release-uat="cd ~/bc/cut_uat_branch ; ruby do.rb"
alias cb="cd ~/bc" # because bc is a taken alias

# --------------------

export GOPATH="$HOME/.go"
export GREP_OPTIONS='--color=auto'
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$PATH:~/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bc/release-options/bin"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH" # If you really need to use it as "tar", you can add a "gnubin" directory to your PATH from your bashrc like:
export PS1="\t|\w: "

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
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias utc="sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime"
alias vrf="ruby ~/.view_random_file_from_git.rb"


last_mig(){
  vim db/migrate/$(ls db/migrate/ | sort | tail -1)
}

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# $PROMPT_COMMAND;history -a; history -n # from http://superuser.com/questions/37576/can-history-files-be-unified-in-bash

# The next line updates PATH for the Google Cloud SDK.
source '/Users/lgoldstein/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/lgoldstein/google-cloud-sdk/completion.bash.inc'



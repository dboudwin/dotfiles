#!/bin/bash
##########################
#Linux-specific functions#
##########################
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias ls="ls --color=auto"
	alias ll="ls -lha"
	alias slog="sudo tail -f /var/log/syslog"
	alias mlog="sudo tail -f /var/log/messages"
	alias ports="netstat -tulanp"
	alias agu="sudo apt-get update && apt-get dist-upgrade"
	alias yu="sudo yum update"
	export PATH="$PATH:$HOME/.rvm/bin"


########################
#OSX-specific funcitons#
########################
elif [[ "$OSTYPE" == "darwin"* ]]; then
	[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
	alias upgrade_brew="brew update && brew upgrade"
	alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
	alias ls="ls -G"
	alias ll="ls -lha"
	alias stfu="osascript -e 'set volume output muted true'" # mute volume
	alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
	alias ports='lsof -n -iTCP | grep LISTEN'
	alias htop='sudo htop'
	source .brew_github_token
	alias nslookup="rlwrap nslookup"
	alias updatedb="LC_ALL='C' sudo updatedb"
	alias study="DATE=`date +%Y-%m-%d` && cd ~/Google\ Drive/Documents/derrick/scripture_study/ && subl ./ ./daily/$DATE"
	alias purge_caches="sudo rm -rf /Library/Caches/*/*; sudo rm -rf ~/Library/Caches/*/*"
fi



# If gnutools are installed
if [ -e /usr/local/bin/gdf ]; then
	alias df="/usr/local/bin/gdf"
fi

########
#Common#
########
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export HISTSIZE=1000000 
export HISTFILESIZE=1000000000000
alias ..="cd .."
alias e="exit"
alias digg="dig +nocmd $1 any +multiline +noall +answer"
alias g="cd ~/git"
alias grep="grep --color=auto"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias l="ls"
alias myip="curl -4 http://icanhazip.com; curl -6 http://icanhazip.com"
alias s="ssh"
alias fixnames="rename 'tr/ A-Z/_a-z/' -- *"
alias webby="python -m SimpleHTTPServer 8000" # starts a web server in current dir, handy for sending files quickly
alias pip2-upgrade="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pip3-upgrade="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias bucket="aws s3api list-objects --bucket $1 --output json --query \"[length(Contents[])]\""
alias dokku='$HOME/.dokku/contrib/dokku_client.sh'
export DOKKU_HOST="wuxol.com"
alias sfix='ssh-keygen -R'
alias t='task'
alias tw='timew'
alias nvm-copy='n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local'


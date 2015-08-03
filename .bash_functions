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


########################
#OSX-specific funcitons#
########################
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias upgrade_brew="brew update && brew install `brew outdated`"
	alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
	alias ls="ls -G"
	alias ll="ls -lha"
	alias stfu="osascript -e 'set volume output muted true'" # mute volume
	alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
	alias nslookup="rlwrap nslookup"

fi

########
#Common#
########
alias ..="cd .."
alias e="exit"
alias g="cd ~/git"
alias grep="grep --color=auto"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias l="ls"
alias myip="curl http://icanhazip.com"
alias s="ssh"
alias webby="python -m SimpleHTTPServer 8000" # starts a web server in current dir, handy for sending files quickly
alias pip-upgrade="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pip3-upgrade="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"


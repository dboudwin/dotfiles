source .bash_functions
source .brew_github_token
HISTSIZE=1000000 
HISTFILESIZE=1000000000000
export PATH="/usr/local/sbin:/Users/derrick/.local/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

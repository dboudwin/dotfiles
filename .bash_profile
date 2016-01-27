source .bash_functions
source .brew_github_token
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

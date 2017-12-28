source ~/.bash_functions
source ~/.brew_github_token
HISTSIZE=1000000 
HISTFILESIZE=1000000000000
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
source ~/.profile

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

export PATH="/usr/local/sbin:~/.nimble/bin:$PATH"

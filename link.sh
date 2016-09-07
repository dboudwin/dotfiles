#!/bin/bash
#Links your repo with your local profile

ln -s "$(pwd)/.bash_profile" ~/.bash_profile
ln -s "$(pwd)/.bash_functions" ~/.bash_functions
ln -s "$(pwd)/.bashrc" ~/.bashrc
ln -s "$(pwd)/.sshrc" ~/.sshrc
ln -s "$(pwd)/.vimrc" ~/.vimrc
mkdir ~/.sshrc.d
ln -s "$(pwd)/.bash_functions" ~/.sshrc.d/.bash_functions



#!/bin/bash
#Links your repo with your local profile

ln -bs "$(pwd)/.bash_profile" ~/.bash_profile
ln -bs "$(pwd)/.bash_functions" ~/.bash_functions
ln -bs "$(pwd)/.bashrc" ~/.bashrc
ln -bs "$(pwd)/.sshrc" ~/.sshrc
ln -bs "$(pwd)/.vimrc" ~/.vimrc
mkdir -p ~/.sshrc.d
ln -bs "$(pwd)/.bash_functions" ~/.sshrc.d/.bash_functions



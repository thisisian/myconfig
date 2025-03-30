#!/bin/bash

read -p "WARNING: THIS WILL OVERWRITE EXISTING CONFIF FILES. Do you want to conitnue (y/n)?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    # bash
    ln -sf ${BASEDIR}/.bashrc ~/.bashrc

    # git
    ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

    # tmux
    ln -sf ${BASEDIR}/.tmux.conf ~/.tmux.conf

    # vim
    ln -sf ${BASEDIR}/.vimrc ~/.vimrc

    #scripts
    ln -sf ${BASEDIR}/scripts/startw ~/.local/bin/startw

    echo "export PATH=$PATH:$HOME/.local/bin" >> $HOME/.bash_profile
fi

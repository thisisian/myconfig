#!/bin/bash

read -p "WARNING: THIS WILL OVERWRITE EXISTING CONFIF FILES. Do you want to conitnue (y/n)?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    # bash
    ln -sf ${BASEDIR}/.bashrc ~/.bashrc

    # fonts
    mkdir -p ~/.config/fontconfig
    ln -sf ${BASEDIR}/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf

    # git
    ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

    # tmux
    ln -sf ${BASEDIR}/.tmux.conf ~/.tmux.conf

    # X
    ln -sf ${BASEDIR}/.xinitrc ~/.xinitrc
    ln -sf ${BASEDIR}/.Xmodmap ~/.Xmodmap

    # vim
    ln -sf ${BASEDIR}/.vimrc ~/.vimrc
fi





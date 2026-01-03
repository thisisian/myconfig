#!/bin/bash


read -p "WARNING: THIS WILL OVERWRITE EXISTING CONFIF FILES. Do you want to conitnue (y/n)? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    # bash
    ln -sf ${BASEDIR}/.bashrc $HOME/.bashrc

    # git
    ln -sf ${BASEDIR}/.gitconfig $HOME/.gitconfig

    # tmux
    ln -sf ${BASEDIR}/.tmux.conf $HOME/.tmux.conf

    # vim
    ln -sf ${BASEDIR}/.vimrc $HOME/.vimrc

    # fonts
    mkdir -p $HOME/.config/fontconfig/
    ln -sf ${BASEDIR}/.config/fontconfig/fonts.conf $HOME/.config/fontconfig/fonts.conf
    
    # foot config
    mkdir -p $HOME/.config/foot/
    ln -sf ${BASEDIR}/.config/foot/foot.ini $HOME/.config/foot/foot.ini

    # river config
    mkdir -p $HOME/.config/river/
    ln -sf ${BASEDIR}/.config/river/init $HOME/.config/river/init
    ln -sf ${BASEDIR}/.config/river/bar $HOME/.config/river/bar
    ln -sf ${BASEDIR}/.config/river/status $HOME/.config/river/status

    # fuzzel 
    mkdir -p $HOME/.config/fuzzel/
    ln -sf ${BASEDIR}/.config/fuzzel/fuzzel.ini $HOME/.config/fuzzel/fuzzel.ini

    echo "export PATH=$PATH:$HOME/.local/bin" >> $HOME/.bash_profile
fi

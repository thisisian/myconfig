#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bash
ln -sf ${BASEDIR}/.bash_profile ~/.bash_profile
ln -sf ${BASEDIR}/.bashrc ~/.bashrc

# fonts
mkdir -p ~/.config/fontconfig
ln -sf ${BASEDIR}/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf

# git
ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

# lynx 
mkdir -p ~/.config/lynx
ln -sf ${BASEDIR}/.config/lynx/lynx.cfg ~/.config/lynx/lynx.cfg

# tmux
ln -sf ${BASEDIR}/.tmux.conf ~/.tmux.conf

# X
ln -sf ${BASEDIR}/.xinitrc ~/.xinitrc
ln -sf ${BASEDIR}/.Xmodmap ~/.Xmodmap
ln -sf ${BASEDIR}/.Xresources ~/.Xresources

# vim
ln -sf ${BASEDIR}/.vimrc ~/.vimrc
mkdir -p ~/.vim/autoload
ln -sf ${BASEDIR}/.vim/autoload/pathogen.vim ~/.vim/autoload

# ssh-agent
mkdir -p ~/.ssh
ln -sf ${BASEDIR}/.ssh/config ~/.ssh/config

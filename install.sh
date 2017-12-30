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


# firefox - fix this
# mkdir -p ~/.mozilla/firefox/!(*.default)/chrome
# ln -sf ${BASEDIR}/firefox/userChrome.css ~/.mozilla/firefox/*.default/chrome/userChrome.css

# suckless
if [ -d ${BASEDIR}/projects/void-packages ]
then
    cp dwm/config.h ~/projects/void-packages/srcpkgs/dwm/files/config.h
    cp st/config.h ~/projects/void-packages/srcpkgs/st/files/config.h
fi

# vim
ln -sf ${BASEDIR}/.vimrc ~/.vimrc
mkdir -p ~/.vim/autoload
ln -sf ${BASEDIR}/.vim/autoload/pathogen.vim ~/.vim/autoload

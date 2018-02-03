# .bash_profile

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

# Get private aliases
[[ -f $HOME/.config/priv_aliases ]] && . $HOME/.config/priv_aliases

#env variables
set EDITOR='vim'
set LYNX_CFG='~/.config/lynx.cfg'
PATH=$PATH:~/.vim/bundle/vim-live-latex-preview/bin

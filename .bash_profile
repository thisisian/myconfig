# .bash_profile

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

#env variables
EDITOR='vim'
export LYNX_CFG='~/.config/lynx.cfg'
PATH=$PATH:$HOME/bin:~/.vim/bundle/vim-live-latex-preview/bin
export GOPATH=$HOME/projects/go

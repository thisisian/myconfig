# .bash_profile

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

#env variables
export EDITOR='vim'
export LYNX_CFG='~/.config/lynx.cfg'
export PATH=$PATH:$HOME/bin:~/.vim/bundle/vim-live-latex-preview/bin
export GOPATH=$HOME/projects/go

export PATH="$HOME/.cargo/bin:$PATH"

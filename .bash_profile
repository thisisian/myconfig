# .bash_profile

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

eval `keychain --quiet --eval --agents ssh id_ed25519`

#env variables
export EDITOR='vim'
export LYNX_CFG='~/.config/lynx.cfg'
export PATH=$PATH:$HOME/bin:~/.vim/bundle/vim-live-latex-preview/bin
export GOPATH=$HOME/projects/go
export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/ian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

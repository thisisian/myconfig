# .bash_profile

# Get the aliases and functions
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

eval `keychain --quiet --eval --agents ssh id_ed25519`

#env variables
export EDITOR="vim"
export LYNX_CFG="~/.config/lynx.cfg"
export GOPATH="$HOME/projects/go"
export PATH="$HOME/.cargo/bin:$PATH"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
shopt -s extglob
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

# calculator
calc() {
    echo "scale=8;$@" | bc -l
}

# note taker

note () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.notes ]]; then
        touch "$HOME/.notes"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.notes"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        printf "%s" > "$HOME/.notes"
    elif [[ "$1" == "-e" ]]; then
        # edit
        $EDITOR "$HOME/.notes"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.notes"
    fi
}

# mkdir and cd into first arg
mkcd () {
    if [ -z "$1" ] ; then
        printf "Missing operand"
    else
        mkdir "$@"
        cd "$1"
    fi
}

# compile and run <file.c> with options after -o
gccc () {
    if [ -z "$1" ] ; then
        printf "Usage: gccc <inputcode.c> <outputfile>"
    else 
        gcc "$1" -o "${1%%.*}" && ./"${1%%.*}"
    fi
}

bldin () {
    cd ~/projects/void-packages
    ./xbps-src clean $* &&
    ./xbps-src -f pkg $* &&
    sudo xbps-install -ffi --repository=./hostdir/binpkgs $*
    cd -
}

### aliases ###

PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias cdk='cd ~/projects/kr && ls -A'
alias cdv='cd ~/projects/void-packages && ls -A'
alias cdd='cd ~/projects/dotfiles && ls -A'
alias cds='cd ~/school && ls -A'
alias cdp='cd ~/projects && ls -A'
alias cdt='cd ~/temp && ls -A'
alias edd='vim ~/projects/void-packages/srcpkgs/dwm/files/config.h'
alias edb='vim ~/.bashrc'
alias edtmux='vim ~/.tmux.conf'
alias edvim='vim ~/.vimrc'
alias bd='bldin dwm'
alias bs='bldin st'
alias nethack='ssh nethack@alt.org'
alias ta='tmux attach'
alias termbin="nc termbin.com 9999"
alias git-push-dotfiles="cd ~/projects/dotfiles && git add -A && git commit -am. && git push && cd -"
alias git-pull-dotfiles="cd ~/projects/dotfiles && git pull && cd -"
alias git-push='git add -A && git commit -am. && git push'

## School-related ##
alias sshpsu='ssh iwinter@linux.cs.pdx.edu'

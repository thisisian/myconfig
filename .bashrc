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

# mkdir and cd into first arg
mkcd () {
    if [ -z "$1" ] ; then
        printf "Missing operand"
    else
        mkdir "$@"
        cd "$1"
    fi
}

### aliases ###
PS1='\[$(tput bold)\][\u@\h \W]\\$ \[$(tput sgr0)\]'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias cdc='cd ~/.config/myconfig && ls -A'
alias cds='cd ~/docs/school && ls -A'
alias cdp='cd ~/docs/projects && ls -A'
alias cdt='cd ~/temp && ls -A'
alias nethack='ssh nethack@alt.org'
alias ta='tmux attach'
alias tas='tmux attach-session -t'
alias termbin="nc termbin.com 9999"
alias xclip='xclip -i -se c'

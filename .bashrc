#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
# Bind ctrl-l to clear screen
bind -m vi-insert "\C-l":clear-screen
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
alias cdd='cd ~/.config/myconfig && ls -A'
alias cds='cd ~/docs/school && ls -A'
alias cdp='cd ~/docs/projects && ls -A'
alias cdt='cd ~/temp && ls -A'
alias edd='vim ~/projects/void-packages/srcpkgs/dwm/files/config.h'
alias edb='vim ~/.bashrc'
alias edtmux='vim ~/.tmux.conf'
alias edvim='vim ~/.vimrc'
alias nethack='ssh nethack@alt.org'
alias ta='tmux attach'
alias tas='tmux attach-session -t'
alias termbin="nc termbin.com 9999"
alias git-push-dotfiles="cd ~/projects/dotfiles && git add -A && git commit -am. && git push && cd -"
alias git-pull-dotfiles="cd ~/projects/dotfiles && git pull && cd -"
alias git-push='git add -A && git commit -am. && git push'
alias cb='xclip -i -se c'

# Get private aliases
[[ -f $HOME/.config/private-aliases ]] && . $HOME/.config/private-aliases

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/apache-maven-3.5.4/bin:$PATH"
export PATH="/opt/idea-IU-181.5281.24/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
PS1="\[\033[0;32m\]\u@\h\[\033[0;34m\]:\w\[\033[00m\]\$ "

eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias l='ls --color=auto'
alias la='ls --color=auto -a'
alias grep='grep --color=auto'
alias cls='clear'
alias open='termux-open'
alias send='termux-open --send'
alias copy='termux-clipboard-set'
alias paste='termux-clipboard-get'

alias fbig="find . -type f -printf '%s %p\n'| sort -nr | head -16"
alias rdir='mkdir -p ./$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 8)/$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 4)/'

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export PATH=/data/data/com.termux/files/home/.local/bin:/data/data/com.termux/files/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/local/lib:/data/data/com.termux/files/home/.local/lib:$LD_LIBRARY_PATH
shopt -s histappend
shopt -s checkwinsize
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

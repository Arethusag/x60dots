# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias vim='vim-x11'

# Setup PS1 prompt to show git branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h:\[\033[0;36m\]\W\[\033[0;35m\]\$(parse_git_branch)\[\033[0m\]\$ "

# Vi mode
set -o vi

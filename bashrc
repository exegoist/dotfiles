# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -lah'
alias vi='vim'

PS1=$'[\@] \u@\h: \w ƒ '
export WORKON_HOME=~/.virtualenvs

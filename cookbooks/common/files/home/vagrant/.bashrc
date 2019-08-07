# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PS1='\[\033[36m\][\h:\u\[\033[00m\] \[\033[34m\]\w\]\[\033[36m\]]\[\033[36m\]\n$\[\033[00m\] '
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# User specific aliases and functions
alias ll="ls -al"

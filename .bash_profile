export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/bin:~/bin:$PATH

#User Defined Unix Functions
md () { mkdir -p "$@" && cd "$@"; }

#PS1
PS1="\[\e[0;36m\]\u@\h \[\e[0;32m\]\w\[\e[0m\]\n♤  "
if [ -n "$SSH_CLIENT" ]; then
        PS1="(ssh) $PS1"
fi
export PS1

export P4CONFIG=~/.p4config

#ALIASES
alias ls='ls -F'
alias slime='open -a "Sublime Text"'
alias speedtest='wget cachefly.cachefly.net/100mb.test -O /dev/null'
alias myip='curl ipecho.net/plain; echo'
alias renew='sudo ipconfig set en0 BOOTP && sudo ipconfig set en0 DHCP'
alias poweroff='sudo /sbin/shutdown -h now'
alias edit_profile='slime ~/.bash_profile'
alias termhere='open -a Terminal "`pwd`"'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias pingg='ping www.google.com'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias dropbox='open ~/Dropbox/'

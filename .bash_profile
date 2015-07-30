export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/bin:$PATH

#User Defined Unix Functions
md () { mkdir -p "$@" && cd "$@"; }

#PS1
CYAN='\[\e[1;36m\]'
PS1='\[\e[1;36m\][\@]\h:\W \$ \[\e[0m\]'
export PS1

#ALIASES
alias slime='open -a "Sublime Text"'
alias speedtest='wget cachefly.cachefly.net/100mb.test -O /dev/null'
alias myip='wget http://automation.whatismyip.com/n09230945.asp -O - -q ; echo'
alias renew='sudo ipconfig set en0 BOOTP && sudo ipconfig set en0 DHCP'
alias poweroff='sudo /sbin/shutdown -h now'
alias edit_profile='slime ~/.bash_profile'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias pingg='ping www.google.com'


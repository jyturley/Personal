export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
ARCHDIR=$HOME/Documents/CS162/mips-dec-ultrix4.2
export ARCHDIR
PIG_HOME=$HOME/Documents/Info290/pig-0.10.0
GPG_TTY=`tty`
export GPG_TTY

#User Defined Unix Functions
md () { mkdir -p "$@" && cd "$@"; }

#PS1
CYAN='\[\e[1;36m\]'
PS1='\[\e[1;36m\][\@]\h:\W \$ \[\e[0m\]'
export PS1

#ALIASES
alias slime='open -a "Sublime Text 2"'
alias speedtest='wget cachefly.cachefly.net/100mb.test -O /dev/null'
alias myip='wget http://automation.whatismyip.com/n09230945.asp -O - -q ; echo'
alias renew='sudo ipconfig set en0 BOOTP && sudo ipconfig set en0 DHCP'
alias rvm-restart='rvm_reload_flag=1 source '\''/Users/fatttmonkey/.rvm/scripts/rvm'\'''
alias poweroff='sudo /sbin/shutdown -h now'
alias edit_profile='slime ~/.bash_profile'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias pingg='ping www.google.com'

#Ruby Virtual Machine
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias python='/usr/bin/python'
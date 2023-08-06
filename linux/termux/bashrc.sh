alias ranger='. ranger'
alias cat='lolcat'
alias q='exit'

start_ssh_and_display_command(){
    set +x;
    sshd ;
    echo "ssh $(whoami)@$(ifconfig | grep "wlan0" -A 1 | grep "inet " | awk "{print \$2}") -p8022";
    termux-clipboard-set "ssh $(whoami)@$(ifconfig | grep "wlan0" -A 1 | grep "inet " | awk "{print \$2}") -p8022";
    set -x;
}
#alias s='sshd ; echo "ssh $(whoami)@$(ifconfig | grep "wlan0" -A 1 | grep "inet " | awk "{print \$2}") -p8022"'
alias s='start_ssh_and_display_command'

alias ccp='termux-clipboard-set'
alias ccv='termux-clipboard-get'

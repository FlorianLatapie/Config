## Modifs perso

### Fonctions 

# on crée une fonction f() dans laquelle on fait cd de tous les arguments qui suivent cdls
# on `cd` les arguments, on `ls`, puis on retire la définition de f(), enfin on execute f()
alias cdls='f(){ cd $@; ls -la; unset -f f; }; f'
alias cdll='f(){ cd $@; ll;     unset -f f; }; f'

### Raccourcis 

alias update="sudo apt update;sudo apt upgrade -y;"

#sudo apt install ranger
alias ranger='. ranger'

#sudo apt install lolcat
alias cat="lolcat"

### Config 

#sudo apt install most
export PAGER="most"

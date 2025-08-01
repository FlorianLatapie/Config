apt update
apt upgrade -y

# install build-essential
echo -e "\nInstalling build-essential\n"
apt install build-essential -y

# SSh client and server 
echo -e "\nInstalling OpenSSh\n"
apt install openssh -y
# termux : sshd
# client : ssh u0_aXXX@ip-addr -p8022

# System infos 
echo -e "\nInstalling neofetch\n"
apt install neofetch -y

# task manager
echo -e "\nInstalling htop\n"
apt install htop -y

# tree 
echo -e "\nInstalling tree\n"
apt install tree -y

# file explorer
echo -e "\nInstalling ranger\n"
apt install ranger -y

# Programming languages

## Python
echo -e "\nInstalling Python\n"
apt install python -y
pip install ipython

## Ruby (for lolcat)
# echo -e "\nInstalling Ruby\n"
# apt install ruby -y
# uncomment if you want to update ruby to the latest version
# gem update --system

# VSCode server (VSCode in the browser)
# VSCode over SSh doesn't work yet on Termux : https://github.com/microsoft/vscode-remote-release/issues/1338
# Source : https://coder.com/docs/code-server/latest/termux#install
echo -e "\nInstalling VSCode server\n"
pkg install tur-repo
apt install code-server -y

mkdir -p ~/.config/code-server/

generate_random_password() {
    LC_ALL=C tr -dc 'A-Za-z0-9!$&*()_=-' < /dev/urandom | head -c 10
}

# Generate a random password
random_password=$(generate_random_password)

# Update the config.yaml file
echo -e "bind-addr: 0.0.0.0:8080\nauth: password\npassword: $random_password\ncert: false" > ~/.config/code-server/config.yaml

# lolcat color the cat command
# echo -e "\nInstalling lolcat\n"
# gem install lolcat

# GitHub CLI
echo -e "\nInstalling gh\n"
apt install gh -y 

# Man 
echo -e "\nInstalling man\n"
pkg install man -y 

# Termux API clipboard 
echo -e "\nInstalling termux-api\n"
pkg install termux-api -y 

# Termux tools for termux-setup-storage
echo -e "\nInstalling termux-tools\n"
pkg install termux-tools -y 

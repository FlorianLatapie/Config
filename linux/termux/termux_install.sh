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
echo -e "\nInstalling Ruby\n"
apt install ruby -y
# uncomment if you want to update ruby to the latest version
# gem update --system

# VSCode server (VSCode in the browser)
# VSCode over SSh doesn't work yet on Termux : https://github.com/microsoft/vscode-remote-release/issues/1338
# Source : https://coder.com/docs/code-server/latest/termux#install
echo -e "\nInstalling VSCode server\n"
pkg install tur-repo
apt install code-server -y

mkdir -p ~/.config/code-server/
echo -e "bind-addr: 0.0.0.0:8080\nauth: password\npassword: ChangeMe123\ncert: false" > ~/.config/code-server/config.yaml

# lolcat color the cat command
echo -e "\nInstalling lolcat\n"
gem install lolcat


# GitHub CLI
echo -e "\nInstalling gh\n"
apt install gh

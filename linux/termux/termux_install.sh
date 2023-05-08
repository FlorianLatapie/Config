apt update
apt upgrade -y

# install build-essential
echo -e "\nInstalling build-essential\n"
apt install build-essential -y

# SSh client and server 
echo -e "\nInstalling OpenSSh\n"
apt install openssh -y
# termux : sshd
# client : ssh u0_a254@<ip-addr> -p8022

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
pip install ipython -y

## Ruby (for lolcat)
apt install ruby -y
gem update --system

# VSCode server (VSCode in the browser)
# VSCode over SSh doesn't work yet on Termux : https://github.com/microsoft/vscode-remote-release/issues/1338
echo -e "\nInstalling VSCode server\n"
apt install code-server -y
echo -e "bind-addr: 0.0.0.0:8080\nauth: password\npassword: ChangeMe123\ncert: false" > ~/.config/code-server/config.yaml

# lolcat color the cat command
echo -e "\nInstalling lolcat\n"
gem install lolcat
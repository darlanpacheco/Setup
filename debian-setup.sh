sudo apt update && sudo apt upgrade

# Dotnet repository
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update

sudo apt install vim neovim neofetch ranger
sudo apt install curl git dotnet-sdk-8.0 nodejs npm lua5.4 wine

sudo npm install -g typescript live-server

# Setting up Bash.
echo "PS1='[\[\e[38;2;190;190;255m\]\w\[\e[0m\]]> '
# \w
# \[\e[38;2;190;190;255m\]
# \[\e[0m\]
alias c='clear'
alias e='exit'" >~/.bashrc

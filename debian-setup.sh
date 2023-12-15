sudo apt update && sudo apt upgrade

# Dotnet repository
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update

sudo apt install vim neovim neofetch ranger cmatrix
sudo apt install wget curl git dotnet-sdk-8.0 nodejs npm lua5.4 wine

sudo npm install -g typescript

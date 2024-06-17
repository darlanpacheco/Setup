sudo apt update -y && sudo apt upgrade -y && sudo apt install wget curl -y

# Installing DOTNET SDK
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest
sudo rm ./dotnet-install.sh

sudo apt update -y && sudo apt upgrade -y

# Installing packages from the official Debian repository
sudo apt install ufw flatpak snapd mangohud papirus-icon-theme -y
sudo apt install kgx flameshot file-roller gnome-boxes chromium -y
sudo apt install dosfstools ntfs-3g wine -y
sudo apt install vim git nodejs npm dotnet-sdk-8.0 -y
sudo apt install gimp inkscape krita blender lmms obs-studio kdenlive -y

# Enable and install Flatpaks
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord com.github.finefindus.eyedropper org.upscayl.Upscayl com.usebottles.bottles -y

# Snap install
sudo snap install core snapd
sudo snap install flutter --classic
sudo snap install postman bitwarden

# Npm install
sudo npm install -g npm yarn typescript vite@latest tailwindcss @reacticons/ionicons -y

# Git configurations
git config --global user.name "Darlan Pacheco"
git config --global user.email "143919135+darlanpacheco@users.noreply.github.com"
git config --global core.editor "vim"

# Ufw set up
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# Setting up MangoHud
mkdir -p ~/.config/MangoHud
echo 'cpu_temp
gpu_temp
vram
ram
position=middle-right
toggle_hud=F12' >~/.config/MangoHud/MangoHud.conf

# Creating projects folder
mkdir ~/Projects
mkdir ~/Paths

# Open web links
xdg-open https://github.com/lassekongo83/adw-gtk3/releases
xdg-open https://fonts.google.com/specimen/Quicksand
xdg-open https://fonts.google.com/specimen/Space+Mono
xdg-open https://code.visualstudio.com/
xdg-open https://developer.android.com/studio
xdg-open https://www.google.com/chrome/
xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
xdg-open https://addons.mozilla.org/en-US/firefox/addon/darkreader/
xdg-open https://store.steampowered.com/about/

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
sudo npm update -g -y && sudo snap refresh && sudo flatpak update -y && flutter upgrade

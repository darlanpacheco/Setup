<<COMMENT

apt install ntp sudo git wget

# Ntp config.
systemctl enable ntp
systemctl restart ntp

COMMENT

sudo apt update && sudo apt upgrade

# Dotnet repository.
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Update the system again.
sudo apt update

# Installing packages from the official Debian repository.
sudo apt install bash vim neofetch ranger
sudo apt install flatpak snapd mangohud papirus-icon-theme
sudo apt install flameshot timeshift file-roller
sudo apt install sudo curl dosfstools ntfs-3g git make fuse3 dotnet-sdk-7.0 nodejs npm lua5.4 wine
sudo apt install firefox-esr chromium gimp inkscape blender lmms obs-studio kdenlive
sudo apt install awesome

# Enable and install Flatpaks.
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub net.nokyan.Resources com.discordapp.Discord org.godotengine.GodotSharp com.bitwarden.desktop com.github.finefindus.eyedropper com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker -y

# Snap install
sudo snap install core

# Setting up Neovim.
sudo rm -r ~/.config/nvim
git clone https://github.com/darlanpacheco/Neovim ~/.config/nvim

# Setting up MangoHud.
mkdir -p ~/.config/MangoHud
echo 'cpu_temp
gpu_temp
vram
ram
position=middle-right
toggle_hud=F12' >~/.config/MangoHud/MangoHud.conf

# Setting up Bash.
echo "PS1='[\[\e[38;2;190;190;255m\]\w\[\e[0m\]]> '
# \w
# \[\e[38;2;190;190;255m\]
# \[\e[0m\]
alias k='kgx'
alias n='nautilus'
alias f='firefox'
alias c='clear'
alias e='exit'
alias auu='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias dr='dotnet run'" >~/.bashrc

# Cloning my repositories
git clone https://github.com/darlanpacheco/CSharp ~/Projects/CSharp
git clone https://github.com/darlanpacheco/Setup ~/Projects/Setup
git clone https://github.com/darlanpacheco/Neovim ~/Projects/Neovim
git clone https://github.com/darlanpacheco/JS-OOP ~/Projects/JS-OOP
git clone https://github.com/darlanpacheco/HTML-and-CSS ~/Projects/HTML-and-CSS
git clone https://github.com/darlanpacheco/Website02 ~/Projects/Website02
git clone https://github.com/darlanpacheco/Website03 ~/Projects/Website03
git clone https://github.com/darlanpacheco/Website04 ~/Projects/Website04

# Basic home folders.
mkdir ~/Downloads ~/Documents ~/Videos

# Sudoers file
sudo vim /etc/sudoers

# Update the system again.
sudo apt update && sudo apt upgrade && sudo apt autoremove

# Open external links.
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# Vinegar configuration.
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

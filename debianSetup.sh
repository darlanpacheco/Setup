# Update the repository and the system.
sudo apt update && sudo apt upgrade

# Setting up Bash.
echo "PS1='[\[\e[38;2;190;190;255m\]\w\[\e[0m\]]> '

# \w
# \[\e[38;2;190;190;255m\]
# \[\e[0m\]

export PATH='/home/$(whoami)/.local/bin:$PATH'

alias k='kgx'
alias n='nautilus'
alias f='firefox'

alias c='clear'
alias auu='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias dr='dotnet run'" >~/.bashrc

# Dotnet repository.
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update

# Installing packages from the official Debian repository.
sudo apt install git curl neofetch man ranger
sudo apt install gnome-shell gnome gnome-software-plugin-flatpak gnome-tweaks gnome-boxes flatpak snapd file-roller mangohud papirus-icon-theme
sudo apt install cpu-x flameshot timeshift chromium gimp inkscape blender lmms obs-studio kdenlive steam
sudo apt install base-files sudo dosfstools ntfs-3g fuse3 dotnet-sdk-7.0 nodejs npm cargo python3 python3-pip make wine wine32

# Enable Flatpak.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install applications via Flatpak.
sudo flatpak install flathub com.mattjakeman.ExtensionManager com.discordapp.Discord com.bitwarden.desktop com.github.finefindus.eyedropper com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker -y

# Install Snap packages.
sudo snap install core && sudo snap install code --classic && sudo snap install bun-js --classic && sudo sudo snap install bottom

# Setting up Lunar Vim.
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# Setting up MangoHud.
mkdir -p ~/.config/MangoHud

echo 'cpu_temp
gpu_temp
vram
ram
position=middle-right
toggle_hud=F12' >~/.config/MangoHud/MangoHud.conf

git clone https://github.com/darlanpach/Setup ~/Projects/Setup
git clone https://github.com/darlanpach/CSharp ~/Projects/CSharp
git clone https://github.com/darlanpach/JS-OOP ~/Projects/JS-OOP
git clone https://github.com/darlanpach/HTML-and-CSS ~/Projects/HTML-and-CSS
git clone https://github.com/darlanpach/Website02 ~/Projects/Website02
git clone https://github.com/darlanpach/Website03 ~/Projects/Website03

# Open external links.
xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# Update the system again.
sudo apt update && sudo apt upgrade && sudo apt autoremove

# .desktop example
# [Desktop Entry]
# Name=
# Exec=
# Type=Application

# Configurations
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

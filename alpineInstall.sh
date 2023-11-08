# setup-alpine
# apk update && apk upgrade && apk add doas && adduser username wheel

# Log into standard user and run it.

# doas apk add git
# git clone https://github.com/darlanpach/Setup /tmp/Setup

doas passwd -l root

# Update the repository and the system.
doas apk update && doas apk upgrade && doas apk add vim

# Setting up repositories
doas vim /etc/apk/repositories

# Setting up Bash.
export SHELL=/bin/bash
echo "PS1='[\[\e[38;2;190;190;255m\]\w\[\e[0m\]]> '
# \w
# \[\e[38;2;190;190;255m\]
# \[\e[0m\]
export PATH='/home/$(whoami)/.local/bin:$PATH'
alias k='kgx'
alias n='nautilus'
alias f='firefox'
alias c='clear'
alias auu='doas apk update && doas apk upgrade'
alias aa='doas apk add'
alias ad='doas apk del'
alias dr='dotnet run'" >~/.bashrc

# Update the system again.
doas apk update

# adding packages from the official Debian repository.
doas apk add bash neofetch bottom ranger
doas apk add flatpak papirus-icon-theme
doas apk add kgx nautilus gnome-boxes file-roller
doas apk add curl dosfstools ntfs-3g fuse dotnet-sdk-7.0 nodejs npm cargo python3 make wine

doas apk add awesome firefox chromium gimp inkscape blender lmms obs-studio kdenlive

# Enable Flatpak.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# add applications via Flatpak.
doas flatpak install flathub com.discordapp.Discord com.bitwarden.desktop com.github.finefindus.eyedropper com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker -y

# Setting up Lunar Vim.
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/adder/add.sh)

mkdir -p ~/.config/lvim
echo 'vim.opt.wrap = true' >~/.config/lvim/config.lua

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

# Update the system again.
doas apk update && doas apk upgrade

# Open external links.
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# .desktop example
# [Desktop Entry]
# Name=
# Exec=
# Type=Application

# Configurations
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

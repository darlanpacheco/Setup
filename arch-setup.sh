mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Music ~/Paths ~/Pictures ~/Projects ~/Videos ~/.themes

sudo nvim /etc/pacman.conf

<<COMMENT
  sudo pacman -Suy --needed --noconfirm flatpak ufw papirus-icon-theme noto-fonts fastfetch
  sudo pacman -Suy --needed --noconfirm cmake vulkan-radeon lib32-vulkan-radeon libappimage gstreamer gst-plugins-ugly gst-plugins-bad gst-plugins-base gst-plugins-good gst-libav
  sudo pacman -Suy --needed --noconfirm wget curl ollama openssh docker docker-compose nodejs npm dotnet-sdk-8.0
  sudo pacman -Suy --needed --noconfirm flameshot gnome-boxes gnome-tweaks firefox-developer-edition chromium libreoffice steam mangohud
  sudo pacman -Suy --needed --noconfirm gimp blender lmms obs-studio kdenlive
COMMENT

<<COMMENT
  git clone https://github.com/LazyVim/starter ~/.config/nvim
COMMENT

<<COMMENT
  git clone https://github.com/flutter/flutter.git ~/Paths/flutter
COMMENT

<<COMMENT
  sudo systemctl start ollama
  ollama pull phi3
COMMENT

<<COMMENT
  sudo npm install -g live-server
COMMENT

<<COMMENT
  wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.1.1.11/android-studio-2024.1.1.11-linux.tar.gz -O android-studio.tar.gz
  tar -xvzf android-studio.tar.gz
  cp -r android-studio ~/Paths/.
  sudo rm -rf ./android-studio.tar.gz ./android-studio
COMMENT

<<COMMENT
  sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
  sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.github.finefindus.eyedropper com.discordapp.Discord org.upscayl.Upscayl com.usebottles.bottles -y
COMMENT

<<COMMENT
  https://github.com/lassekongo83/adw-gtk3/releases
  https://addons.mozilla.org/en-US/firefox/addon/darkreader/
  https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
  https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/

  ssh-keygen -t ed25519 -C "email"
  cat ~/.ssh/id_ed25519.pub
COMMENT

# Git configurations
git config --global user.name "Darlan Pacheco"
git config --global user.email "143919135+darlanpacheco@users.noreply.github.com"
git config --global core.editor "nvim"

# Firewall configurations
sudo ufw allow http
sudo ufw allow https
sudo ufw limit ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# Setting up Bash
cat ./.bashrc >~/.bashrc

# Setting up Neovim
cat ./nvim-config.lua >~/.config/nvim/lua/plugins/nvim-config.lua

# Setting up MangoHud
mkdir -p ~/.config/MangoHud
cat ./mangohud.conf >~/.config/MangoHud/MangoHud.conf

# Setting up init system
sudo systemctl enable NetworkManager gdm ollama sshd docker

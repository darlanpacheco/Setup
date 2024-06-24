mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Music ~/Paths ~/Pictures ~/Projects ~/Videos ~/.themes

sudo nvim /etc/pacman.conf

<<COMMENT
    sudo pacman -Suy --needed --noconfirm flatpak ufw papirus-icon-theme noto-fonts fastfetch
    sudo pacman -Suy --needed --noconfirm cmake vulkan-radeon lib32-vulkan-radeon libappimage gstreamer gst-plugins-ugly gst-plugins-bad gst-plugins-base gst-plugins-good gst-libav
    sudo pacman -Suy --needed --noconfirm wget curl code nodejs npm openssh docker docker-compose dotnet-sdk-8.0
    sudo pacman -Suy --needed --noconfirm flameshot gnome-boxes gnome-tweaks firefox-developer-edition chromium libreoffice steam mangohud
    sudo pacman -Suy --needed --noconfirm gimp blender lmms obs-studio kdenlive
COMMENT

<<COMMENT
    sudo npm install -g npm yarn typescript create-react-app react-router-dom tailwindcss vite@latest @reacticons/ionicons -y
COMMENT

<<COMMENT
    git clone https://github.com/flutter/flutter.git ~/Paths/flutter
COMMENT

<<COMMENT
    wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.1.1.11/android-studio-2024.1.1.11-linux.tar.gz -O android-studio.tar.gz
    tar -xvzf android-studio.tar.gz
    cp -r android-studio ~/Paths/.
    sudo rm -rf ./android-studio.tar.gz ./android-studio
COMMENT

<<COMMENT
    sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord com.github.finefindus.eyedropper org.upscayl.Upscayl com.usebottles.bottles -y
COMMENT

<<COMMENT
    https://github.com/lassekongo83/adw-gtk3/releases
    https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
    https://addons.mozilla.org/en-US/firefox/addon/darkreader/

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

# Setting up VSCode
mkdir -p ~/.config/"Code - OSS"/User
cat ./settings.json >~/.config/"Code - OSS"/User/settings.json
cat ./keybindings.json >~/.config/"Code - OSS"/User/keybindings.json
code-oss --install-extension Dart-Code.flutter
code-oss --install-extension bradlc.vscode-tailwindcss
code-oss --install-extension mtxr.sqltools
code-oss --install-extension foxundermoon.shell-format
code-oss --install-extension esbenp.prettier-vscode
code-oss --install-extension mongodb.mongodb-vscode
code-oss --install-extension lkrms.inifmt
code-oss --install-extension eamodio.gitlens
code-oss --install-extension dbaeumer.vscode-eslint
code-oss --install-extension dsznajder.es7-react-js-snippets
code-oss --install-extension usernamehw.errorlens
code-oss --install-extension EditorConfig.EditorConfig
code-oss --install-extension muhammad-sammy.csharp
code-oss --install-extension ms-azuretools.vscode-docker
code-oss --install-extension ms-vscode.live-server
code-oss --install-extension ms-vscode.vscode-typescript-next

# Setting up MangoHud
mkdir -p ~/.config/MangoHud
cat ./MangoHud.conf >~/.config/MangoHud/MangoHud.conf

# Setting up init system
sudo systemctl enable NetworkManager gdm sshd docker

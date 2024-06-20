<<COMMENT

xbps-install -u xbps
xbps-install -Suy
void-installer
bash
xbps-install -Suy git

COMMENT

# Creating projects folder
mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Music ~/Pictures ~/Videos ~/Projects ~/Paths

# Installing packages from the official Void repository
sudo xbps-install -Suy void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Suy NetworkManager xorg gnome pulseaudio
sudo xbps-install -Suy gtk+3-devel clang cmake ninja pkg-config Vulkan-Tools MesaLib-devel mesa-vulkan-radeon mesa-vaapi mesa-vdpau mesa-dri-32bit wine wine-32bit wine-mono
sudo xbps-install -Suy flatpak wine ufw google-fonts-ttf papirus-icon-theme fastfetch
sudo xbps-install -Suy wget curl vscode neovim nodejs docker docker-compose
sudo xbps-install -Suy flameshot gnome-boxes firefox libreoffice steam MangoHud
sudo xbps-install -Suy gimp blender lmms obs kdenlive

# NPM install
sudo npm install -g npm yarn typescript vite@latest tailwindcss @reacticons/ionicons -y

# Flutter SDK download
git clone https://github.com/flutter/flutter.git ~/Paths/flutter

# Installing .NET SDK
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest
sudo rm ./dotnet-install.sh

# Enable and install Flatpaks
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord com.github.finefindus.eyedropper org.upscayl.Upscayl com.usebottles.bottles -y

# Open web links
# xdg-open https://github.com/lassekongo83/adw-gtk3/releases
# xdg-open https://developer.android.com/studio
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/darkreader/

# Git configurations
git config --global user.name "Darlan Pacheco"
git config --global user.email "143919135+darlanpacheco@users.noreply.github.com"
git config --global core.editor "nvim"

# UFw set up
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
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
code-oss --install-extension tal7aouy.icons
code-oss --install-extension eamodio.gitlens
code-oss --install-extension dbaeumer.vscode-eslint
code-oss --install-extension dsznajder.es7-react-js-snippets
code-oss --install-extension usernamehw.errorlens
code-oss --install-extension EditorConfig.EditorConfig
code-oss --install-extension ms-azuretools.vscode-docker
code-oss --install-extension ms-vscode.live-server
code-oss --install-extension ms-vscode.vscode-typescript-next
code-oss --install-extension ms-dotnettools.csdevkit

# Setting up MangoHud
mkdir -p ~/.config/MangoHud
cat ./MangoHud.conf >~/.config/MangoHud/MangoHud.conf

sudo xbps-install -Suy && flatpak update -y

# Setting up links
sudo ln -s /etc/sv/NetworkManager /var/service/NetworkManager
sudo ln -s /etc/sv/dbus /var/service/dbus
sudo ln -s /etc/sv/gdm /var/service/gdm
sudo ln -s /etc/sv/docker /var/service/docker

sudo apt update && sudo apt upgrade

# Dotnet repository.
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update

# Installing packages from the official Debian repository.
sudo apt install bash vim neofetch
sudo apt install flatpak snapd mangohud papirus-icon-theme
sudo apt install flameshot file-roller
sudo apt install sudo ufw curl dosfstools ntfs-3g git make fuse3 dotnet-sdk-8.0 nodejs npm lua5.4 wine
sudo apt install gimp krita blender lmms obs-studio kdenlive

# Enable and install Flatpaks.
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord org.godotengine.GodotSharp com.bitwarden.desktop com.github.finefindus.eyedropper com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker -y

# Snap install
sudo snap install core

# Npm install
sudo npm install -g typescript

# Ufw set up
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

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
" >~/.bashrc

sudo apt update && sudo apt upgrade && sudo apt autoremove
# Open external links.
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
# Vinegar configuration.
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

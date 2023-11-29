sudo dnf update && sudo dnf upgrade

# Update the system again.
sudo dnf update

# Installing packages from the official Fedora repository.
sudo dnf install bash vim neovim neofetch ranger
sudo dnf install flatpak snapd mangohud papirus-icon-theme
sudo dnf install flameshot file-roller
sudo dnf install sudo ufw curl dosfstools ntfs-3g git make fuse dotnet-sdk-7.0 nodejs npm lua wine
sudo dnf install firefox chromium gimp krita blender lmms obs-studio kdenlive steam
sudo dnf install awesome

# Enable and install Flatpaks.
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord org.godotengine.GodotSharp com.bitwarden.desktop com.github.finefindus.eyedropper org.gnome.Boxes com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker -y

# Enable and install Snaps.
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install bottom

# Npm install
sudo npm install -g typescript live-server

# Ufw set up
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

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
alias duu='sudo dnf update && sudo dnf upgrade'
alias di='sudo dnf install'" >~/.bashrc

# Cloning my repositories
git clone https://github.com/darlanpacheco/CSharp ~/Projects/CSharp
git clone https://github.com/darlanpacheco/Setup ~/Projects/Setup
git clone https://github.com/darlanpacheco/Neovim ~/Projects/Neovim
git clone https://github.com/darlanpacheco/JS-OOP ~/Projects/JS-OOP

# Update the system again.
sudo dnf update && sudo dnf upgrade && sudo dnf autoremove

# Open external links.
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# Vinegar configuration.
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

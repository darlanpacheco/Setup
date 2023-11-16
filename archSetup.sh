: <<'COMMENT'

loadkeys br-abnt2

fdisk -l /dev/device
cfdisk /dev/device

# Formating partitions
mkfs.fat -F32 /dev/bootpart
mkfs.btrfs /dev/rootpart
mkfs.btrfs /dev/homepart
mkswap /dev/swappart

mount /dev/rootpart /mnt

# Making directories
mkdir /mnt/boot
mkdir /mnt/boot/efi
mkdir /mnt/home

# Mounting partitions
mount /dev/bootpart /mnt/boot/efi
mount /dev/homepart /mnt/home
swapon /dev/swappart

pacstrap -K /mnt linux linux-firmware base base-devel

# Fstab is used to specify storage device mounting configurations in Linux. The 'U' parameter is used to emphasize the use of the ID.
genfstab -U -p /mnt >>/mnt/etc/fstab

arch-chroot /mnt /bin/bash

sudo pacman -S grub efibootmgr networkmanager network-manager-applet wpa_supplicant sudo gdm git

systemctl enable NetworkManager gdm

# Installing GRUB.
grub-install /dev/archinstalldevice
grub-mkconfig -o /boot/grub/grub.cfg

passwd

COMMENT

# Update the repository and the system.
sudo pacman -Syu

# Setting up Bash.
echo "PS1='[\[\e[38;2;190;190;255m\]\w\[\e[0m\]]> '
# \w
# \[\e[38;2;190;190;255m\]
# \[\e[0m\]
alias k='kgx'
alias n='nautilus'
alias f='firefox-developer-edition'
alias c='clear'
alias e='exit'
alias Syu='sudo pacman -Syu'
alias S='sudo pacman -S --needed'
alias R='sudo pacman -R'" >~/.bashrc

sudo pacman -S --needed bash vim neovim neofetch ranger
sudo pacman -S --needed flatpak mangohud papirus-icon-theme
sudo pacman -S --needed flameshot timeshift gnome-boxes file-roller
sudo pacman -S --needed sudo dosfstools ntfs-3g git curl wget make fuse dotnet-sdk nodejs lua
sudo pacman -S --needed firefox-developer-edition chromium gimp inkscape blender lmms obs-studio kdenlive
sudo pacman -S --needed gdm gnome gnome-shell

# Enable Flatpak.
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub net.nokyan.Resources com.discordapp.Discord org.godotengine.GodotSharp com.bitwarden.desktop com.github.finefindus.eyedropper com.vixalien.sticky org.upscayl.Upscayl com.usebottles.bottles org.localsend.localsend_app io.github.vinegarhq.Vinegar xyz.xclicker.xclicker

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

# Update the system again.
sudo pacman -Syu

# Open external links.
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# Vinegar configuration.
# flatpak run io.github.vinegarhq.Vinegar edit >[player.fflags] DFIntTaskSchedulerTargetFps = 75

# /etc/fstab
# /etc/sudoers
# /etc/hostname
# /etc/pacman.conf
# /boot/grub/grub.cfg

# /usr/share/themes
# /usr/share/applications

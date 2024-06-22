<<COMMENT

loadkeys br-abnt2

fdisk -l /dev/device
cfdisk /dev/device

mkfs.vfat /dev/bootpart
mkfs.ext4 /dev/rootpart
mkswap /dev/swappart

mount /dev/rootpart /mnt

mkdir /mnt/boot
mkdir /mnt/boot/efi

mount /dev/bootpart /mnt/boot/efi
swapon /dev/swappart

pacstrap -K /mnt linux linux-firmware base base-devel

genfstab -U /mnt >>/mnt/etc/fstab

arch-chroot /mnt /bin/bash

sudo pacman -Suy --noconfirm grub efibootmgr networkmanager xorg gdm gnome neovim git

grub-install /dev/archinstalldevice
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m -G wheel my-username

passwd root
passwd my-username

nvim /etc/sudoers

COMMENT

<<COMMENT

loadkeys br-abnt2

fdisk -l /dev/device
cfdisk /dev/device

# Formating partitions
mkfs.fat -F32 /dev/bootpart
mkfs.ext4 /dev/rootpart
mkfs.ext4 /dev/homepart
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

# Fstab is used to specify storage device mounting configurations in Linux. The "U" parameter is used to emphasize the use of the ID
genfstab -U -p /mnt >>/mnt/etc/fstab

arch-chroot /mnt /bin/bash

sudo pacman -S grub efibootmgr networkmanager gdm git

systemctl enable NetworkManager gdm

# Installing GRUB
grub-install /dev/archinstalldevice
grub-mkconfig -o /boot/grub/grub.cfg

passwd

COMMENT

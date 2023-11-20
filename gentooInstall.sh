loadkeys br-abnt2

fdisk -l /dev/device
cfdisk /dev/device

# Formating partitions
mkfs.fat -F32 /dev/bootpart
mkfs.btrfs /dev/rootpart
mkfs.btrfs /dev/homepart
mkswap /dev/swappart

mount /dev/rootpart /mnt/gentoo

cd /mnt/gentoo

# Downloading stage3
links gentoo.org/downloads

# Extracting stage3
# tar xvpf
tar xJf *.tar.xz --xattrs --numeric-owner

# Setting up the processor flag and processor core count
vi /mnt/gentoo/etc/portage/make.conf >>"-02 -march=znver2 -pipe" && vi /mnt/gentoo/etc/portage/make.conf >>"MAKEOPTS="-j6""

# Selecting download mirror
mirrorselect -i -o >>/mnt/gentoo/etc/portage/make.conf

# Portage config
mkdir -p /mnt/gentoo/etc/portage/repos.conf
cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf

cp -d /etc/resolv.conf /mnt/gentoo/etc

mount --types proc /proc /mnt/gentoo/proc

mount --rbind /sys /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/dev

chroot /mnt/gento /bin/bash

source /etc/profile

export PS1="(chroot) ${PS1}"

mount /dev/bootpart /mnt/boot

emerge-webrsync

eselect profile list

# ~/.bashrc

# /etc/fstab
# /etc/sudoers
# /etc/hostname
# /boot/grub/grub.cfg

# /usr/share/themes
# /usr/share/applications

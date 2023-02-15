#!/bin/bash
# author Jonathan Sanfilippo
# installazione di recovery per il sistema Arch Linux

#nvme
#p1="/dev/nvme0n1p1"
#p2="/dev/nvme0n1p2"
#p3="/dev/nvme0n1p3"

#vda
#p1="/dev/vda1"
#p2="/dev/vda2"
#p3="/dev/vda3"

#sda
#p1="/dev/sda1"
#p2="/dev/sda2"
#p3="/dev/sda3" 


country="gb"
editor="vim"
kernel="linux"



#Formattazione delle partizioni
mkfs.fat -F32 $p1
mkfs.btrfs -f $p2      

#Montaggio e sottovolumi
mount $p2 /mnt           
btrfs su cr /mnt/@              
btrfs su cr /mnt/@home      
umount /mnt                             
mount -o noatime,commit=120,compress=zstd,space_cache=v2,ssd,subvol=@ $p2 /mnt 
mkdir -p /mnt/{boot,home,iso,scripts} 
mount -o noatime,commit=120,compress=zstd,space_cache=v2,ssd,subvol=@home $p2 /mnt/home 
mount $p1 /mnt/boot 



reflector --verbose -c $country --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel $kernel linux-firmware $editor
genfstab -Up /mnt > /mnt/etc/fstab
cp 2-parte.sh /mnt/home/
arch-chroot /mnt 


##############################################################################
# create partition table with fdisk and format usb pendrive as vfat/msdos.
sudo bash -i 

# needed for mkfs.vfat.
pacman -S dosfstools
y

fdisk -l

# create partition

fdisk /dev/<dev>
# delete partitions partition.
d

# partition numbers.
1
2

# create the partition as msdos.
o 

# write the changes to disk
w


# format the partition
mkfs.vfat /dev/<dev>

mkdir /mnt/usb

# mount the partition.

fdisk -l
mount -o rw /dev/<dev> /mnt/usb

# show mounted partitions.
mount -l

# umount the partition.
umount /dev/<dev>




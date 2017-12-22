##############################################################################
# create partition table with fdisk and format usb pendrive as vfat/msdos.
sudo bash -i 

# needed for mkfs.vfat.
pacman -S dosfstools
y

fdisk -l

# create partition

fdisk /dev/sdb
# delete partitions partition.
d

# partition numbers.
1
2
o

# create the partition
o 

# write the changes to disk
w


# format the partition
mkfs.vfat /dev/sdb

mkdir /mnt/usb

# mount the partition.

fdisk -l
mount -o rw /dev/sdb /mnt/usb

# show mounted partitions.
mount -l

# umount the partition.
umount /dev/sdb





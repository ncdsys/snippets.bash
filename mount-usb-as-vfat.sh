# mount the partition.
sudo bash -i
fdisk -l
mount -o rw /dev/sdb /mnt/usb

# show mounted partitions.
mount -l

# umount the partition.
umount /dev/sdb





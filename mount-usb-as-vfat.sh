# mount the partition.
sudo bash -i
fdisk -l
mount -o rw /dev/<dev> /mnt/<folder>

# show mounted partitions.
mount -l

# umount the partition.
umount /dev/<dev>




##############################################################################
# mount cd rom for reading.

# check the mount point in /etc/fstab.
cat /etc/fstab

# mount the file system.
sudo mount /dev/<sr0>

# umount the file system.
sudo umount /dev/<sr0>
##############################################################################

# kill the processes using the device.
sudo fuser -k /dev/<sr0>



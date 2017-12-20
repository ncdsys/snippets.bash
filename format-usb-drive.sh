##############################################################################
# format usb drive.
sudo bash -i 
fdisk -l
# -c option checks for bad sector
# mkfs -t ext3 -c /dev/sde1

mkfs -t ext3 -c /dev/<dev>



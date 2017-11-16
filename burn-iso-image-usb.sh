##############################################################################
#record #extract #unpack #burn #iso images #to usb #storage #pen #drive #debian

sudo bash -i

fdisk -l
# format the partition as ntfs.
cd /home/tau/Downloads
ls
# record the image.
# IT HAS TO BE /dev/sdb not /dev/sdb1.
dd if=<iso> of=/dev/<usb-device> bs=4M;sync
exit


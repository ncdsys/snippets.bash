##############################################################################
#burn # write #archlinux #iso #usb #image #disk.

cd /home/tau/Downloads

# check device.
fdisk -l

# Example.
# dd bs=4M if=archlinux-2016.02.01-dual.iso of=/dev/sdb;sync

dd bs=4M if=<archlinux.iso> of=/dev/<device>;sync


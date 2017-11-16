##############################################################################
# add #permit #user #group #sudo.
# It adds user to the group sudo.
# i should figure out more consistent way.
sudo usermod <user> -a -G sudo
echo '<user>	ALL=(ALL:ALL) ALL' >> /etc/sudoers


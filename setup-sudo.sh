##############################################################################
#set #setup #add #permit #tau #user #group #sudo.

# It adds tau to the group sudo.
# i should figure out more consistent way.
sudo usermod tau -a -G sudo
sudo echo 'tau	ALL=(ALL:ALL) ALL' >> /etc/sudoers


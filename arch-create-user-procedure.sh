##############################################################################
# setup # create #user #linux #i3

sudo bash -i
useradd -m -s /bin/bash <user>
passwd <user>
cp /etc/X11/xinit/xinitrc /home/<user>/.xinitrc
# add exec i3 to the file
vy /home/<user>/.xinitrc 
chown <user>:<user> /home/<user>/.xinitrc
exit


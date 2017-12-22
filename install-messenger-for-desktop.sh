##############################################################################
# install messenger for desktop.

cd ~/Downloads
ls
tar -zxvf messengerfordesktop-bin.tar.gz
cd messengerfordesktop-bin/
makepkg -sri
y
y
sudo pacman -Qo /opt/messengerfordesktop/messengerfordesktop

# create soft/symbolic link for it, it seems that it is not
# getting shown in the path environment for some bug.
sudo ln -s /opt/messengerfordesktop/messengerfordesktop /usr/sbin


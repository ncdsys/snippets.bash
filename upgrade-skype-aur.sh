##############################################################################
# uninstall skype, upgrade.
whereis skypeforlinux
sudo bash -i
pacman -Qo /usr/share/skypeforlinux
pacman -Rs skypeforlinux-bin
y
exit
cd ~/Downloads
ls
tar -zxvf skypeforlinux-bin.tar.gz
cd skypeforlinux-bin
ls
makepkg -sri
y


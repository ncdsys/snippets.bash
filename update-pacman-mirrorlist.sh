##############################################################################
# update pacman mirrorlist for fixing error when downloading/installing package.

# get list of mirrors at https://www.archlinux.org/mirrorlist/

vy /etc/pacman.d/mirrorlist
pacman -Syyu
y


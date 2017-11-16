##############################################################################
# downgrade #fix #package #version

# downgrade undo upgrade arch package
# Example:

# cat /var/log/pacman.log | grep -i -e upgraded | grep i3
# cd /var/cache/pacman/pkg/
# ls | grep i3
# pacman -U i3-wm-4.12-1-x86_64.pkg.tar.xz
# y
# pacman -U i3status-2.10-1-x86_64.pkg.tar.xz
# y

cd /var/cache/pacman/pkg/
pacman -U <package>


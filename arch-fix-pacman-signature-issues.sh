##############################################################################
# pacman #fix #broken #package pgp #signature #issues.
# i have got issues with gnupg
# when updating arch and a i had a blackout
# i have got files spreaded and it kept failing
# to install things with pacman #i had to force install gnupg.
# then remove 

# pacman -S --force gnupg
# rm -fr /etc/pacman.d/gnupg
# 
# # and pupulate it again.
# pacman-key --init
# pacman-key --populate archlinux
# 
# # then install archlinux-keystring.
# pacman -S archlinux-keyring
# 
# # update the system.
# pacman -Syu

pacman -S --force <package>
rm -fr /etc/pacman.d/gnupg

# and pupulate it again.
pacman-key --init
pacman-key --populate archlinux

# then install archlinux-keystring.
pacman -S archlinux-keyring

# update the system.
pacman -Syu


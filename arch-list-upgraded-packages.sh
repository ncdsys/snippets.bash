##############################################################################
#list #check #get #retrieve #upgraded #packages #pacman

# obtain get list of last upgraded packages arch linux.
# Example:
# cat /var/log/pacman.log | grep -i -e upgraded | grep i3
cat /var/log/pacman.log | grep -i -e upgraded | grep <package>


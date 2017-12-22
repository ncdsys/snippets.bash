##############################################################################
# downgrade libreoffice version.

cd /var/cache/pacman/pkg/
ls | grep libre
5.2.3.3
sudo pacman -U libreoffice-fresh-5.2.3-3-x86_64.pkg.tar.xz
y

cd /var/cache/pacman/pkg/
ls 

sudo bash -i


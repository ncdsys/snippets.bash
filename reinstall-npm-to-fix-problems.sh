##############################################################################
# resinstall npm.
# fixing, solving, changing, npm, problem, existing, packages, installing.
# fix npm problems. 

sudo bash -i
pacman -S npm
Y
pacman -Qo /usr~/projects/node_modules/
mv /usr~/projects/node_modules/ /usr~/projects/tmp_node_modules
rm -fr /usr~/projects/tmp_node_modules
exit


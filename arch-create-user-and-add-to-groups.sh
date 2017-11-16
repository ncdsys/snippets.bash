##############################################################################
#add # create #add #user #groups

# create a user and adds it to multiple groups, it sets its default
# shell to bash and configure its password.
useradd <user> -g <group0,group1,group2,..> -m -s /bin/bash 
passwd <user>


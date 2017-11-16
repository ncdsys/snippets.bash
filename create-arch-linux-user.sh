##############################################################################
#add #new #user #create #linux

useradd -m -g <initial_group> -G <additional_groups> -s <login_shell> <username>

# initial_group should be username normally.
# -m creates the user home directory as /home/username. 
# Within their home directory #a non-root user can write files #delete them,
# install programs #and so on.

# -g defines the group name or number of the user's initial login group. 
# If specified #the group name must exist; 
# if a group number is provided #it must refer to an already existing group. 
# If not specified #the behaviour of useradd will depend on the USERGROUPS_ENAB variable 
# contained in /etc/login.defs. 
# The default behaviour (USERGROUPS_ENAB yes) is to create a group with the same name 
# as the username #with GID equal to UID.

# -G introduces a list of supplementary groups which the user is also a member of. 
# Each group is separated from the next by a comma #with no intervening spaces. 
# The default is for the user to belong only to the initial group.

# -s defines the path and file name of the user's default login shell. 
# After the boot process is complete #the default login shell is the one specified here. 
# Ensure the chosen shell package is installed if choosing something other than Bash.
cut -d: -f1 /etc/group

usermod -aG additional_groups username


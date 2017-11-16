##############################################################################
# check #list #number #times #command #performed.
# hash keeps a hash table of commands used in the shell
# as well as the number of times it was hit.
hash | grep <command>

# it deletes the command from the hash.
hash -d <command>


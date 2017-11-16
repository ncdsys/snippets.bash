##############################################################################
#send #exchange #host #machine #ssh

# send a folder/directory to a host machine.
scp -r <folder> <user>@<hostname>:<destination>
 
# ex: scp -r root@tv:/var/www/html ./
##############################################################################
#copy #retrieve #dir #folder #host #machine #ssh

# retrieve a folder from a host machine.
scp -P <port> <file> <user>@<host>:<destination>



##############################################################################
# ftp download example

#!/bin/sh
HOST='ftp.users.qwest.net'
USER='yourid'
PASSWD='yourpw'
FILE='testdown.html'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
get $FILE
bye
END_SCRIPT
##############################################################################
# ftp upload example

#!/bin/sh
HOST='yourhostftp.users.qwest.net'
USER='yourid'
PASSWD='yourpw'
FILE='error.log'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
put $FILE
bye
END_SCRIPT


# setting up incron.

sudo bash -i 

echo 'tau' >> /etc/incron.allow
echo 'root' >> /etc/incron.allow

incrontab -e
# 
# IN_ACCESS - File was accessed (read)
# IN_ATTRIB - Metadata changed (permissions, timestamps, extended attributes, etc.)
# IN_CLOSE_WRITE - File opened for writing was closed
# IN_CLOSE_NOWRITE - File not opened for writing was closed
# IN_CREATE - File/directory created in watched directory
# IN_DELETE - File/directory deleted from watched directory
# IN_DELETE_SELF - Watched file/directory was itself deleted
# IN_MODIFY - File was modified
# IN_MOVE_SELF - Watched file/directory was itself moved
# IN_MOVED_FROM - File moved out of watched directory
# IN_MOVED_TO - File moved into watched directory
# IN_OPEN - File was opened

# now whenever changes happens it will display the dzen message.
/home/tau/projects	IN_ACCESS,IN_MODIFY,IN_CREATE		echo "Changed folder."| dzen2 -p


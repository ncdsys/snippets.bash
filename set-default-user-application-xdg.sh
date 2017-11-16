##############################################################################
# set #default #application #by #with #mimetype #xdg-open #xdg-mime.

# set default file type opener.
# example
# xdg-mime default google-chrome.desktop application/octet-stream
xdg-mime default <application>.desktop <mimetype>

# alternatively it could be done with.
# example.
# xdg-settings set default application/octet-stream google-chrome.desktop
xdg-settings set default <mimetype> <application>.desktop

# query #check #xdg-mime #xdg-open #type #mimetype #filename.
# example.
# xdg-mime query filetype foo.html
# text/html
# notice if xdg-open determines the type based on the content
# of the file not based on the extension. 
xdg-mime query filetype <filename>

# query #default #application #xdg-open.
xdg-mime query default application/octet-stream


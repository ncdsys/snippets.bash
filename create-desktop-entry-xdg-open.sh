##############################################################################
# create #desktop #entry #for #application #with #xdg-open.

# in order to get xdg-open working to open applications it is needed
# to have a program.desktop file.

# query the mimetype of the file.
xdg-mime query filetype <file>

# example program.desktop file.
echo '
[Desktop Entry]
Name=<program>
Exec=<executable>
MimeType=<mimetype0>;<mimetype1>
Icon=<program>
Terminal=false
Type=Application
' > ~/.local/share/applications/vy.desktop

# update the database.
update-desktop-database ~/.local/share/applications
update-mime-database    ~/.local/share/mime



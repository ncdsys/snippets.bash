##############################################################################
#create #generate #setup #systemd #service 

# run a script during Arch Linux boot process
# 
# We will use a systemd service to run our script during boot process of Arch Linux. Create a new file in "/etc/systemd/system" (e.g. myscript.service) and add the following contents:

[Unit]
Description=My script

[Service]
ExecStart=/usr/bin/my-script

[Install]
WantedBy=multi-user.target 
put your script in "/usr/bin/my-script" and make sure to make it executable. and then enable the service.

sudo chmod 755 /usr/bin/my-script
sudo systemctl enable myscript.service


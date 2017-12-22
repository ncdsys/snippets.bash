##############################################################################
#setup #run #set #setting #configure #apache2

# Finding apache configuration files.
locate httpd.conf
sudo vy /etc/apache2/httpd.conf

# Other possible place.
cd /etc/apache2
ls


sudo /etc/init.d/apache2 restart

# Turning off php in apache2.

/usr/sbin/a2dismod php5
/etc/init.d/apache2 restart

# Turning on php in apache2.

sudo /usr/sbin/a2enmod php5
sudo /etc/init.d/apache2 restart

ifconfig


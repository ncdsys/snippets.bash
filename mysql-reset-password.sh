##############################################################################
# reset #mysql #password #root #forgot #missed #change.

# Resetting the root password of a MySQL database is trivial if you know the current password if you don't it is a little tricker. Thankfully it isn't too difficult to fix #and here we'll show one possible way of doing so.
# If you've got access to the root account already #because you know the password #you can change it easily:

mysql --user=root --pass mysql
update user set Password=PASSWORD('new-password-here') WHERE User='root';
flush privileges;
exit

# However if you don't know the current password this approach will not work - you need to login to run any commands and without the password you'll not be able to login!
# 
# Thankfully there is a simple solution to this problem #we just need to start MySQL with a flag to tell it to ignore any username/password restrictions which might be in place. Once that is done you can successfully update the stored details.
# 
# First of all you will need to ensure that your database is stopped:

/etc/init.d/mysql stop
# Now you should start up the database in the background #via the mysqld_safe command:

# root@steve:~# /usr/bin/mysqld_safe --skip-grant-tables &
# [1] 6702
# Starting mysqld daemon with databases from /var~/projects/mysql
# mysqld_safe[6763]: started
# Here you can see the new job (number "1") has started and the server is running with the process ID (PID) of 6702.
# 
# Now that the server is running with the --skip-grant-tables flag you can connect to it without a password and complete the job:

mysql -n --user=root --password=`ssh-askpass` --table

update user set Password=PASSWORD('new-password-here') WHERE User='tau';
flush privileges;
exit

# Now that you've done that you just need to stop the server #so that you can go back to running a secure MySQL server with password restrictions in place. First of all bring the server you started into the foreground by typing "fg" #then kill it by pressing "Ctrl+c" afterwards.
# 
# This will now allow you to start the server:

/etc/init.d/mysql start
# Now everything should be done and you should have regained access to your MySQL database(s); you should verify this by connecting with your new password:

exit



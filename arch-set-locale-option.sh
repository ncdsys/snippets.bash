##############################################################################
# fix #change #set #locale #arch linux #configure.

# display current locale.
locale

# list available locales.
localectl list-locales

# set the system locale.
# example.
# localectl set-locale LANG=en_US.UTF8
# note: it need to be reboot to get effects.
localectl set-locale LANG=<lang>


##############################################################################
# clone, escs.bash.
cd ~/projects
git clone git@github.com:iogf/escs.bash.git escs.bash-code
##############################################################################
# push, update, scheme.
cd ~/projects/snippets.bash-code
git status
git add *
git commit -a
git push

##############################################################################
# show, view, check, cpu, architecture.

lscpu

# Architecture:          i686
# CPU op-mode(s):        32-bit, 64-bit
# CPU(s):                2
# Thread(s) per core:    1
# Core(s) per socket:    2
# CPU socket(s):         1
# Vendor ID:             GenuineIntel
# CPU family:            6
# Model:                 23
# Stepping:              10
# CPU MHz:               2493.742
# L1d cache:             32K
# L1i cache:             32K
# L2 cache:             2048K
##############################################################################

# generate ssh keygen, github ssh-keygen, ssh key

echo '' > ~/.ssh/known_hosts

ssh-keygen -t rsa -C `askpass`

y
ls -la ~/.ssh/id_rsa

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
vy ~/.ssh/id_rsa.pub
# Copy the key then add to git hub.

# Test if it is working then input the passphrase.
ssh -T git@github.com
##############################################################################
# downgrade all packages arch linux
pacman -Syy

pacman -Suu
##############################################################################
#list #kernel #modules #loaded
lsmod 
##############################################################################
# edit, pacman, mirror list file.
vy /etc/pacman.d/mirrorlist
##############################################################################
# edit, pacman, conf, pacman.conf, file.
/etc/pacman.conf
##############################################################################
# run python interpreter with tee, it outputs what's sent to the interpreter.

tee >(python -i)

# ignore interruptions/signals.
tee -i >(python -i)
##############################################################################
# check, view, get, list, show, plugged, attached, inserted, device, usb, pen drive.
sudo bash -i
cat /var/log/kern.log
exit
##############################################################################
# arrays in posix shell, bash

# Prepare array
A=; for i in a b c d; do A="$A$i:"; done; echo $A;
 
# Iterate over
while [ -n "${A}" ]; do I="${A%%:*}"; echo "${I}"; A="${A :}"; done
##############################################################################
# Check if a folder exists

DIR="/etc"
if [ -d $DIR ]; then
echo "Folder ${DIR} exists"
else
echo "Folder ${DIR} does NOT exists"
fi
##############################################################################
# Check to see if the user running the script is root
# check, root, run as root, run script as root.
# If you have a script that must be run as the root user, put this at the top:
# make sure the one running the script is root. it is meant to be put
# at the top of some bash script.
#!/bin/bash
#Test if user is root
 
if [ "$(id -u 2>/dev/null)" != "0" ]; then
echo "ERROR: $0 must be run as root" >&2
exit 1
fi
##############################################################################
# Check if a file exists

FILE="/etc/hosts"
if [ -f $FILE ]; then
echo "File ${FILE} exists"
else
echo "File ${FILE} does NOT exists"
fi
##############################################################################
# List out all your Zombie processes, idle processes, idle process.

ps -el | grep 'Z'
##############################################################################
# show all users in the system.

cat /etc/passwd | cut -d: -f1
##############################################################################
# bash for loop, bash loop

for VARIABLE in 1 2 3 4 5 .. N
do
command1
command2
commandN
done
 
 
### For within a range, but only when the limits are constants
 
#!/bin/bash
for i in {1..5}
do
echo "Welcome $i times"
done
 
###
 
### A traditional numeric loop
 
#!/bin/bash
limit=5
for (( c=1; c<=$limit; c++ ))
do
echo "Welcome $c times..."
done
##############################################################################
# update, pacman, mirrorlist
# generate the mirrorlist at https://www.archlinux.org/mirrorlist/
# copy to the mirrorlist file.

vy /etc/pacman.d/mirrorlist
pacman -Syyu
##############################################################################
# list, aur, packages, only.

sudo pacman -Qm
##############################################################################
# cpu, info, check, list, processors, speed.

less /proc/cpuinfo
##############################################################################
# bash get user input, get input, get data.
echo "Enter date (format: MMDDYYYY)"
read RELEASEDATE

##############################################################################
# checking devices with lspci.
lspci
##############################################################################

# run ruby as simple prompt.

irb --simple-prompt
##############################################################################
# boot, msgs, messages, log.
dmesg
##############################################################################
# list, view, absolute, complete, path, files.
ls -d -1 $PWD/*

##############################################################################
# list, view, absolute, complete, path, files, quote, ".

ls -Q -d -1 $PWD/*
##############################################################################
# fix, set, mouse, touchpad, tapbutton, TAPBUTTON.

# set tapbutton.
synclient TapButton1=1
##############################################################################
# place, set, setup, i3, config, two monitors, screens, horizontallyy.

xrandr --output LVDS1 --auto --left-of VGA1

# places VGA1 at the left of the laptop screen.
xrandr --output VGA1 --auto --left-of LVDS1
##############################################################################

# restore, screen, remove, monitor.
xrandr --auto
##############################################################################
# place, set, setup, i3, config, two monitors, screens, vertically.

# place VGA1 above the laptop screen.
xrandr --output VGA1 --auto --above LVDS1

# place VGA1 below laptop screen.
xrandr --output LVDS1 --auto --below VGA1
##############################################################################
# restart, eth0, interface, wifi, device, wired.
sudo bash -i
ifconfig 
ifconfig eth0 down
ifconfig eth0 up

# or 
ip link set dev br0 up
ip link set dev br0 down

##############################################################################
# start, hostapd, create_ap, share, internet, wifi.

# depends on.
sudo pacman -S create_ap

# start it. it demands root.

create_ap wlp4s0 enp3s0 coolheaven thedoors
##############################################################################
# list, view, partitions, tables, fdisk.

# the usb storages will be listed here.
sudo fdisk -l
##############################################################################
# show, list, environment, variables, functions, bash.
# shows environment variables., things like EDITOR, HOME, LANGUAGE, LOGNAME, ..
env
##############################################################################
# list all commands performed in a shell instance.

hash

##############################################################################
# stop, avoid, disable, touchpad, click, while, typing.
# start as daemon.
syndaemon -d -i 1.0 -t
##############################################################################
# setup, irc_setting.py.

cp ~/data/irc_setting.py ~/.vy
echo 'from irc_setting import *' >> ~/.vy/vyrc

# edit, irc_setting.py.
vy ~/.vy/irc_setting.py 

# update, irc_setting
cp ~/.vy/irc_setting.py ~/data/irc_setting.py
##############################################################################
# enable, shopt, globstar, /**/file*

# it permits writting stuff like /**/file*
# shopt -s globstar 
echo 'shopt -s globstar' >> ~/.bashrc
##############################################################################
# set, vy, default, editor, pick, config.

echo 'export EDITOR="vy"' >> ~/.bashrc
##############################################################################
# find, check, print, get, usb, device, name, pen drive, webcam, model, vendor, device, pluggable.

lsusb

# example:
# [tau@localhost ~]$ lsusb
# Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
# Bus 007 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
# Bus 006 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
# Bus 002 Device 002: ID 13fe:4200 Kingston Technology Company Inc. 
# Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
# Bus 005 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
# Bus 001 Device 002: ID 04f2:b23b Chicony Electronics Co., Ltd 
# Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
# Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

# The line that shows kingston corresponds to the vendor of the pen drive.
# The same thing would work with plugable webcams or other devices.
# It is useful to find possible drivers for devices.
##############################################################################
# list, kernel, availabl, all, modules.
ls -R ~/projects/modules/`uname -r`/kernel 
##############################################################################
# top, mysql, view, check.

# Similar to top, but designed specifically for MySQL. Gives you an interactive display of what is happening with your MySQL database, in real time. Information such as what queries are being run, amount of data which is being flowing in and out of the database, number of queries being run per second and number of slow queries. This application is once again packaged with most large common Linux distributions.

mytop
##############################################################################
# list, build, file, create, dependency, dependencies, virtualenv, pip, project, app, local.

pip freeze --local
##############################################################################
# solve, solving, pacman, errors, failed to commit transaction (conflicting files), pip.

sudo bash -i

# check if the file/dir is owned by another package.
pacman -Qo /usr~/projects/python2.7/site-packages/pip/

# as it is not then it can be removed.
mv /usr~/projects/python2.7/site-packages/pip /usr~/projects/python2.7/site-packages/pip-tmp

pacman -S python2-pip
y

rm -fr /usr~/projects/python2.7/site-packages/pip-tmp

##############################################################################
# fix, evince, acroread, issue, problem, remembering, last, viewed, page.

# it is needed this package in order to get evince or acroread remembering
# the last viewed page.

sudo pacman -S gvfs
y
##############################################################################
# set, pick, setup, determine, make, google-chrome, default, application, html, files.
xdg-settings set default-web-browser google-chrome-stable.desktop
xdg-open http://www.google.com.br
##############################################################################
# check all mounted devices.
sudo mount
##############################################################################
# record song, poem, solidao-com-as-maos.
arecord -vv -f cd solidao-com-as-maos.wav
##############################################################################
# installs ttf-monaco, configure monaco fonts.

cd ~/Downloads
ls
tar -zxvf ttf-monaco.tar.gz
cd ttf-monaco/
makepkg -sri
y


##############################################################################
# mc plugin vy

ffmpeg -f alsa -i default -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 <filename.avi>

##############################################################################
# install libtk-img ruby to support jpeg on tkphotoimage.

cd ~/Downloads
ls
tar -zxvf tkimg.tar.gz
cd tkimg/
makepkg -sri
y
##############################################################################
# take vy screenshot.

sleep 4; import -window root -quality 100 -silent vyscreenshot.jpg
##############################################################################

cd ~/Downloads
ls
tar -zxvf zoom.tar
cd zoom
makepkg -sri
y
##############################################################################
ls
cd tests
ls
go build nice.go
ls
./nice
##############################################################################





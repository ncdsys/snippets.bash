# Not runnable snippets/templates.
##############################################################################
# setup, init, start, config, configuration, git, email, name, settings.

# it prints all git settings.
git config --list

# set user, email for git commits.

# it sets the user and e-mail address. Whenever a commit
# is made it uses this information.

git config --global user.name "<name>"
git config --global user.email <email>
##############################################################################
# share, put, place, host, package, python, pip, application, set, setup, config, configuration.

# install needed software.
sudo pacman -S python-pip

# first check whether the ~/pypirc file exists. it is responsible
# for authenticating with the server.
ls ~/.pypirc

# creates the file in case it doesnt exist.
echo '
[distutils] # this tells distutils what package indexes you can push to
index-servers =
    pypi
    pypitest

[pypi]
username:username
password:password

[pypitest]
username:password
password:password
' > ~/.pypirc

# edit the pypi, pypitest username/password fields.
vy ~/.pypirc
 
##############################################################################
# set, put, share, app, application, pip, upload.

cd <folder-code>

echo '
[metadata]
description-file = README.md
' > setup.cfg

vy setup.cfg
 

# example setup.py
# from distutils.core import setup
# setup(
  # name = 'mypackage',
  # packages = ['mypackage'], # this must be the same as the name above
  # version = '0.1',
  # description = 'A random test lib',
  # author = 'Peter Downs',
  # author_email = 'peterldowns@gmail.com',
  # url = 'https://github.com/peterldowns/mypackage', # use the URL to the github repo
  # download_url = 'https://github.com/peterldowns/mypackage/tarball/0.1', # I'll explain this in a second
  # keywords = ['testing', 'logging', 'example'], # arbitrary keywords
  # classifiers = [],
# )

vy setup.py

# upload the package.

python setup.py sdist register upload
rm -fr dist

# **notes**
# i must remove all the 
# package-0.1.egg-info 
# from /usr/local/lib/python2.7/dist-packages
# in order to have pip installing the packages again.

##############################################################################
# record, extract, unpack, burn, iso images, to usb, storage, pen drive, record debian iso image.
sudo bash -i

fdisk -l
# format the partition as ntfs.
cd /home/tau/Downloads
ls
# record the image.
# IT HAS TO BE /dev/sdb not /dev/sdb1.
dd if=<iso> of=/dev/<usb-device> bs=4M;sync
exit

##############################################################################
# export, set, define, variable, environment, bash.
# export a variable to env, bash.
export <variable>=10
env

##############################################################################
# mount, usb, pendrive, device.

sudo bash -i
fdisk -l
mount -o rw /dev/sdb[number] /mnt
umount /dev/sdb[number]
exit
##############################################################################
# write, text, on, image.
# example:
# convert -font Noto-Sans-UI -fill blue -pointsize 40 -draw "text 30,30 'iury'" -draw "text 30,70'com 3 anos'" eubebe.jpg eubebe2.jpg

# list available fonts.
convert -list font

convert -font helvetica -fill blue -pointsize 40 -draw "text <x0>,<y0> '<text0>'" -draw "text <x1>,<y1> '<text1>'" <input>.jpg <output>.jpg

##############################################################################
# install, package, nodejs, npm, global, root, superuser.

npm install -g <package>
##############################################################################
# remove, delete, uninstall, package, nodejs, npm, global, root, superuser.

npm uninstall -g <package>
##############################################################################
# unpack, tar.bz2, files.

tar xvjf <file>
##############################################################################
# extract, audio, mp3, youtube, link, url, download, song.

youtube-dl --extract-audio --audio-format mp3 <video-url>
##############################################################################
# unzip, stuff, file, Downloads, downloads.

cd ~/Downloads
ls
unzip <file>
##############################################################################
# manage, use, gist, github.

cd <folder>
git clone <ssh> <snippet>

# push, update, <snippet>
cd <folder>/<snippet>
git status
git add *
git commit -a
git push
##############################################################################
# install, aur, applications, apps, programs, packages.

cd ~/Downloads
ls
tar -zxvf <package>
cd <package>
makepkg -sri


##############################################################################
# django, run, interactive, shell, settings, specific.


# example:
# python manage.py shell --settings=twoscoops.settings.local

python manage.py shell --settings=<path>
##############################################################################
# django, run, server, settings, specific.

# example:
# python manage.py runserver --settings=twoscoops.settings.local

python manage.py runserver --settings=<path>
##############################################################################
# pip, install, requirements, files.

pip install -r <file>
##############################################################################
# check, file, owned, by, another, package, pacman, packages, owns, files.
sudo pacman -Qo <file>
##############################################################################
# look, check, optional, dependency, package, application, pacman.

sudo pacman -Si <package>

##############################################################################
# create, new branch, from, existing commit, master.

cd <folder>
git checkout master
git checkout -b <branch-name> <commit>
git push --set-upstream origin <branch-name>
##############################################################################
# serve, serving, staticfiles, production, django, apache.

# django.contrib.staticfiles provides a convenience management command for gathering static files in a single directory so you can serve them easily.
# 
# Set the STATIC_ROOT setting to the directory from which you’d like to serve these files, for example:

STATIC_ROOT = "/var/www/example.com/static/"
# Run the collectstatic management command:

python manage.py collectstatic
# This will copy all files from your static folders into the STATIC_ROOT directory.
# 
# Use a web server of your choice to serve the files. Deploying static files covers some common deployment strategies for static files.
##############################################################################
# add, new, user, create, linux.

useradd -m -g <initial_group> -G <additional_groups> -s <login_shell> <username>

# initial_group should be username normally.
# -m creates the user home directory as /home/username. 
# Within their home directory, a non-root user can write files, delete them,
# install programs, and so on.

# -g defines the group name or number of the user's initial login group. 
# If specified, the group name must exist; 
# if a group number is provided, it must refer to an already existing group. 
# If not specified, the behaviour of useradd will depend on the USERGROUPS_ENAB variable 
# contained in /etc/login.defs. 
# The default behaviour (USERGROUPS_ENAB yes) is to create a group with the same name 
# as the username, with GID equal to UID.

# -G introduces a list of supplementary groups which the user is also a member of. 
# Each group is separated from the next by a comma, with no intervening spaces. 
# The default is for the user to belong only to the initial group.

# -s defines the path and file name of the user's default login shell. 
# After the boot process is complete, the default login shell is the one specified here. 
# Ensure the chosen shell package is installed if choosing something other than Bash.
cut -d: -f1 /etc/group

usermod -aG additional_groups username
##############################################################################
# set, default, application, by, with, mimetype, xdg-open, xdg-mime.

# example
# xdg-mime default google-chrome.desktop application/octet-stream
xdg-mime default <application>.desktop <mimetype>

# alternatively it could be done with.
# example.
# xdg-settings set default application/octet-stream google-chrome.desktop
xdg-settings set default <mimetype> <application>.desktop

# query, check, xdg-mime, xdg-open, type, mimetype, filename.
# example.
# xdg-mime query filetype foo.html
# text/html
# notice if xdg-open determines the type based on the content
# of the file not based on the extension. 
xdg-mime query filetype <filename>

# query, default, application, xdg-open.
xdg-mime query default application/octet-stream

##############################################################################
# resize, imagemagick, turn smaller, decrease, image, scale, increase.

convert <example.png> -resize <value0>x<value0> <example.png>
##############################################################################
# run, django, server, network, internet, users, view, permit, let.

# using this command it permits internet peers to check out the
# site.

# example.
# python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0.0.0.0:<port>
##############################################################################
# show, message, dzen, for, period, timeout, time.
# example.
# (echo "<message>"; sleep 1) | dzen2 -bg darkred -fg grey80 -fn fixed 

(echo "<message>"; sleep <timeout>) | dzen2 -bg darkred -fg grey80 -fn fixed 
##############################################################################
# schedule, month, remind with dzen.
echo Monthly Schedule; remind -c1 -m) | dzen2 -l 52 -w 410 -p -fn lime -bg '#e0e8ea' -fg black -x 635

# Horizontal menu without any files.
(echo Menu; echo -e "xterm\nxclock\nxeyes\nxfontsel") | dzen2 -l 4 -m h -p
##############################################################################
# create, desktop, entry, for, application, with, xdg-open.

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


##############################################################################
# find, locate, package, files, pacman.

pacma -Ql <package>
##############################################################################
# start, run, process, with, priority, nice, niceness, value.
nice -n < <value> <process>
##############################################################################
# change, process, priority, nice, value.
renice <value> -p <pid>
##############################################################################
# increase, set, config, configure, screen, brightness, laptop.
# reference: https://wiki.archlinux.org/index.php/backlight
xbacklight -set <value>
##############################################################################
# run, program, app, without, buffering, stdbuf.

# makes stdout unbuffered.
stdbuf -o 0 <command>
##############################################################################
# change, use, set, default, shell.

# to list all installed shells, run:
chsh -l
# and to set one as default for your user (make sure you use the full path, as given by chsh -l):

chsh -s <full-path-to-shell>
##############################################################################
# cut, video, trim, ffmpeg.
# the command below cuts the video from the position 00:00:30 to the position 00:00:35
# ffmpeg -i [input_file] -ss [start_seconds] -t [duration_seconds] [output_file]

ffmpeg -ss 00:00:30 -i <orginalfile> -t 00:00:05 -vcodec copy -acodec copy <newfile>
##############################################################################
# search, research, find, text, string, dir, files, recursive, recursively, folder, all, grep, locate.
# example grep -r -l "foo" .

grep -r -l "<string>" <folder>
##############################################################################
# delete, commit.
git reset --hard <commit>
git push origin HEAD --force
##############################################################################
# create, make, instantiate, run, virtualenv, pythonywhere.

mkvirtualenv --python=/usr/bin/python2.7 <mysite-virtualenv>
##############################################################################
# uninstall, remove, app, package, program, arch, linux, completely, dependencies, pacman.

pacman -Rsn <name>
##############################################################################
# find, look, check, package, pacman, app, program, application.

pacman -Ss <name>
##############################################################################
# record, video, desktop, ffmpeg, with, audio.

ffmpeg -f alsa -i default -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 <filename.avi>
##############################################################################
# capture, record, video, deskto, ffmpeg, without, audio, low, quality.
# low quality.
ffmpeg  -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 filename.avi
##############################################################################
# capture, record video from desktop using ffmpeg without audio and high quality.
ffmpeg -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -vcodec libx264 -threads 0 <video.mkv>
##############################################################################
# capture, record video from desktop using ffmpeg with audio and high quality.
ffmpeg -f alsa -i default -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -acodec pcm_s16le -vcodec libx264 -threads 0 <output.mkv>

##############################################################################
# create, new, branch, from, existing commit, git, make.
cd <project>
git checkout <branch>
git checkout -b <name> <commit>
git push --set-upstream origin <name>
git checkout <name>
##############################################################################
# delete, branch, git, remove.
cd <project>
git checkout master
git branch -d <name>
git push origin :<name>
git fetch -p 

##############################################################################
# configure, setup, fix, touchpad, tapbutton, mouse, archlinux, xorg.

pacman -S xf86-input-synaptics
cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/

# example file.
# /etc/X11/xorg.conf.d/70-synaptics.conf

# add this section to the 70-synaptics.conf file.

# Section "InputClass"
    # Identifier "touchpad"
    # Driver "synaptics"
    # MatchIsTouchpad "on"
        # Option "TapButton1" "1"
        # Option "TapButton2" "3"
        # Option "TapButton3" "2"
# EndSection

##############################################################################
# make, fix, configure, setup, set keyboard, layout, arch, xorg, permanently.

# /etc/vconsole.conf
KEYMAP=br-abnt2
FONT=lat9w-16

# add this section to the /etc/X11/xorg.conf.d/00-keyboard.conf file.

# Section "InputClass"
        # Identifier "system-keyboard"
        # MatchIsKeyboard "on"
        # Option "XkbLayout" "br"
        # Option "XkbModel" "dell"
# EndSection

##############################################################################
# set, adjust, fix, laptop, xrand, backlight, brightness.
# example:
# xrandr --output LVDS1 --brightness 0.7

xrandr --output LVDS1 --brightness <value>
##############################################################################
# place, set, setup, i3, config, two monitors, screens.
# output is the screen, position could be : --above, --below, --left-of, --right-of.
xrandr --output <output> --auto <position> LVDS1
##############################################################################
# decimal, to, hex.

printf "%x\n" <keynum>
##############################################################################
# speak, sound, word, listen, translate.
# lang=en
espeak -v <lang> <"word">
##############################################################################
# install, pip, package, specific, version.
# exaple:
# pip2 install -U django==1.9.6
pip install -U <package>==<version>
##############################################################################
# check, view, python, package, version, pip.
pip2 freeze | grep <package>
##############################################################################
# fix, change, set, locale, arch linux, configure.

# display current locale.
locale

# list available locales.
localectl list-locales

# set the system locale.
# example.
# localectl set-locale LANG=en_US.UTF8
# note: it need to be reboot to get effects.
localectl set-locale LANG=<lang>
##############################################################################
# substitute, replace, string, in, multiple, files, exclude, folder, dir.
# examples:
# grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'
# grep -rl --exclude-dir='.git' 'CashRegisterIncomeAndExpenses' ./ | xargs sed -i 's/CashRegisterIncomeAndExpenses/CashRegister/g'

grep -rl  'matchingstring' somedir/ | xargs sed -i 's/string1/string2/g' 
##############################################################################
# Run a script during Arch Linux boot process
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

##############################################################################
# read, view, tar, gz, compressed, files.

zless <filename>
##############################################################################
# pip, install, requirements, files.

pip install -r <file>
##############################################################################
# fix, i3, su, root, call, startx, after, superuser, sudo, broken, .Xauthority.

# when calling startx as root from i3 it will turn .Xauthority ownership to root.

# in order to fix it just remove .Xauthority* files.
##############################################################################
# send, directory to host machine with scp.

scp -r <folder> <user>@<hostname>:<destination>
 
# ex: scp -r root@tv:/var/www/html ./
##############################################################################
# transfer, send, copy file, to, host, machine, scp

scp -P <port> <file> <user>@<host>:<destination>

##############################################################################
# run, running, git, in, local, machine.
git init
git add *.zip
git commit -a -m 'Initial commit'
git remote add reef  edrx@reef:/sda5/hippiegoddess/
git fetch -v   reef
git pull
##############################################################################
# set time manually.
# date --set 2015-07-19
# date --set 12:43:00

sudo bash -i
date --set <date>
date --set <time>
exit
##############################################################################
# ascii, art, draw, ascii, letters, bigger.

bash
figlet -f standard <text> | sed 's/^/# /' 
##############################################################################
# comment, listing, files, dir, folder, sed.
# prepends lines of text with character, sed, SED.

# it calls ls -la which produces output in lines.
# then it pipes the output to sed that uses 's' which means
# substitution. It means replace all ^ for the string '# '.
# the ^ stands for beginning of the line in regex.

ls -la <folder> | sed 's/^/# /'
##############################################################################

# making, make, shabang, turn, python, script, executable.
# making python scripts executable a.k.a shabang them.
echo '#!/usr/bin/env python' > /tmp/tmpfile
cat <file> >> /tmp/tmpfile
cat /tmp/tmpfile > <file>
##############################################################################
# install, installing, python, scripts, as ,user.

python2.6 setup.py install --user
##############################################################################
# make, build, create, tarball.

tar -cvzf <file.tgz> <folder>
##############################################################################
# running X window applications over ssh.
# Change from /etc/ssh/sshd_config X11Forwarding yes
ssh -X <user@host>
##############################################################################
# capture, capturing screenshots from camera with streamer.

streamer -q -c /dev/video -s 300x400 s  -b 16 -o <file.jpg>
##############################################################################
# transform convert png into gif.

# resize
convert <input.png> -channel Alpha -threshold 80% -resize 120x120 <output.gif>

# dont resize.
convert <input.png> -channel Alpha  <output.gif>
##############################################################################
# running logkeys, tests.
logkeys -s --no-daemon -o foo --no-func-keys --no-timestamp
##############################################################################
# find, locate, package, files, pacman, arch.

sudo bash -i
pacman -Ql <package>
##############################################################################
# add, gem, path, PATH, run, executable, ruby.

echo 'PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"' >>~/.bashrc
##############################################################################
# add, zip, zipping, password, file, password, security.
# Testing zip with password.

zip --password MY_SECRET foo.zip foo
ls
rm foo
unzip -P MY_SECRET foo
ls
cat foo
rm foo.zip
##############################################################################
# add, zip, zipping, password, file, password, security.
# Testing zip with password.

zip --password <password> <file.zip> <file>
##############################################################################
# unzip, zip, zipping, password, file, password, security.
# Testing zip with password.

unzip -P <password> <file.zip>
##############################################################################
# zip, folder, pack.

zip -r <file.zip> <folder>


##############################################################################
# take, get, screenshot, imagemagick.

import -window root -quality 100 -silent <file.jpg>

# take, screenshot, get, after, delay, vy.

sleep 4; import -window root -quality 100 -silent <file.jpg>
##############################################################################
# obtain get list of last upgraded packages arch linux.
# Example:
# cat /var/log/pacman.log | grep -i -e upgraded | grep i3
cat /var/log/pacman.log | grep -i -e upgraded | grep <package>
##############################################################################
# downgrade undo upgrade arch package
# Example:

# cat /var/log/pacman.log | grep -i -e upgraded | grep i3
# cd /var/cache/pacman/pkg/
# ls | grep i3
# pacman -U i3-wm-4.12-1-x86_64.pkg.tar.xz
# y
# pacman -U i3status-2.10-1-x86_64.pkg.tar.xz
# y

cd /var/cache/pacman/pkg/
pacman -U <package>

##############################################################################
#load #kernel #module
modprobe <module>
##############################################################################
# create, user, linux.
sudo bash -i
useradd -m -s /bin/bash <user>
passwd <user>
cp /etc/X11/xinit/xinitrc /home/<user>/.xinitrc
# add exec i3 to the file
vy /home/<user>/.xinitrc 
chown <user>:<user> /home/<user>/.xinitrc
exit
##############################################################################
# add, permit, user, group, sudo.
# It adds user to the group sudo.
# i should figure out more consistent way.
sudo usermod <user> -a -G sudo
echo '<user>	ALL=(ALL:ALL) ALL' >> /etc/sudoers
##############################################################################
# find, all, occurrences, look, pattern.

grep -rl  '<pattern>' <folder>
##############################################################################
# set, setting, change, python, default, prompt.

echo 'import sys; sys.ps1="<token0>\n"; sys.ps2="<token1>\n"' > /home/tau/.set_py_prompt.py
echo "export PYTHONSTARTUP=/home/tau/.set_py_prompt.py" >> /home/tau/.bashrc

##############################################################################
# convert, markdown, to, html.

markdown <file.md> >> <file.html>
##############################################################################
# create, make, add, group.

groupadd <group>
cat /etc/group | grep <group>
##############################################################################
# create, add, user.

useradd <user> -g <group0,group1,group2,..> -m -s /bin/bash 
passwd <user>
##############################################################################
# modprobe, templates, examples.

# list currently loaded modules in the kernel.
# kernel modules
sudo bash -i
lsmod | less
##############################################################################
# verify whether the module was installed.
lsmod | grep <module>
##############################################################################
# load a new module with a different name into the kernel.
modprobe <module> -o <new_name>
##############################################################################
# unload a module from the linux kernel.
modprobe -r <module>
##############################################################################
# list, process, running, executed, target, port.
# list processes running on a given target-port whose protocol is tcp.
# example:
# it would list vy if it were connected to a given host through the port 6667.
# lsof -i tcp:6667

lsof -i <protocol>:<port>
##############################################################################
# delete, wifi-menu, profiles.
ls /etc/netctl
sudo rm /etc/netctl/<profile>
##############################################################################
# send mail, email, read email, mail.

# install ssmtp on linux, send mail ssmt.

# configuring ssmtp to send email.
# edit this file.

# mailhub=smtp.gmail.com:587
# UseSTARTTLS=YES
# AuthUser=myemail@gmail.com
# AuthPass=XXXXXXXXXXXXXXX
# TLS_CA_File=/etc/pki/tls/certs/ca-bundle.crt

# add these lines in the file.
sudo bash -i
vy /etc/ssmtp/ssmtp.conf&
exit

# Sign in to the Gmail web interface.Open the 'Forwarding and POP/IMAP' 
# tab on your 'Settings' page, and configure IMAP or POP. 
# After enabling this in Gmail, make sure you click 'Save Changes' so 
# Gmail can communicate with your mail client. 

# add tau to the group mail, so tau can send mails.
sudo bash -i
usermod tau -a -G mail
exit

ssmtp ioliveira@id.uff.br
From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!


# mail
sudo bash -i

sendmail -t
From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!

# Press Control-D
exit

echo 'From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!
' >> first_email

sudo bash -i
cat first_email | sendmail -i -t
exit

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

##############################################################################
# remove all symlinks in a directory, but leave the target files.

find <dir> -maxdepth 1 -type l -exec rm -f {} \;
##############################################################################
# rename all files in subdirectories from .ext0 to ext1.

find <dir> -type f -name '*.cpp' | while read filename; do mv -v "${filename}" "`echo "${filename}" | sed -e 's/\<ext0>/\<ext1>/'`"; done

##############################################################################
# find and List files containing a certain string
# find <dir> -type f -name "*.py" | xargs grep -l "<string>"

find <dir> -type f -name "<pattern>" | xargs grep -l "<string>"
##############################################################################
# Find and List files not containing a certain string

find . -type f -name "*.file" | xargs grep -L "STRING"
##############################################################################
# Convert file encoding recursively

iconv -l 

find /Path/To/Files -name \*.xxx -type f | \
(while read file; do
iconv -f ISO-8859-1 -t UTF8 "$file" > "${file%.xxx}-utf8.xxx";
done);
##############################################################################
# website monitoring
# This will curl every 10 seconds news.thesite.com and look for Awesomestring in it, 
# if it's there, the output will play a music file through xargs. If watch is not installed on your system, install it with brew.

watch -n10 "curl http://news.thesite.com | grep Awesomestring | xargs -I % /usr/bin/afplay ~/Music/my.mp3"
##############################################################################
# do a http post with a json body.
curl -v -H "Content-Type: application/json" -X POST -d '{ "param1": "one", "param2": "two"}' http://yoursite
##############################################################################
# Restore file & folder default permissions

find <dir> -type f -exec chmod 644 {} \;
find <dir> -type d -exec chmod 755 {} \;
##############################################################################
# Extract tar archive to specified location

tar -cvvf <archive.tar> <path>
##############################################################################
# TAR - Tar several files
# create a tarball, add files to a tarball, make a tarball.
# compress with tar.
tar -czf <package.tar.gz> <file0> <file1> <file2> ...
##############################################################################
# format usb drive.

fdisk -l
# -c option checks for bad sector
# mkfs -t ext3 -c /dev/sde1

mkfs -t ext3 -c /dev/<dev.
##############################################################################
# soft, symbolic, link, file.
# example:
# sudo ln -s /opt/messengerfordesktop/messengerfordesktop /usr/sbin

ln -s <origin> <destin>
##############################################################################
# check, test, if package is installed
# pacman -Qi gpgme
pacman -Qi <package>
##############################################################################
# pacman, fix, broken, package pgp, signature, issues.
# i have got issues with gnupg
# when updating arch and a i had a blackout
# i have got files spreaded and it kept failing
# to install things with pacman, i had to force install gnupg.
# then remove 

# pacman -S --force gnupg
# rm -fr /etc/pacman.d/gnupg
# 
# # and pupulate it again.
# pacman-key --init
# pacman-key --populate archlinux
# 
# # then install archlinux-keystring.
# pacman -S archlinux-keyring
# 
# # update the system.
# pacman -Syu

pacman -S --force <package>
rm -fr /etc/pacman.d/gnupg

# and pupulate it again.
pacman-key --init
pacman-key --populate archlinux

# then install archlinux-keystring.
pacman -S archlinux-keyring

# update the system.
pacman -Syu

##############################################################################
# Run command using at, run command at date, time.


# echo "ls -l" | at midnight
# 
# echo "<ls>" > at 0815am Jan 24

echo "<cmd>" > at <time>
##############################################################################
# run python as unbuffered mode, run python script unbuffered.

python -u <script.py>

# when it is installed.
python -u <script>
##############################################################################
# absolute, complete, path, file.

readlink -f <file>
##############################################################################
# list opened ports with nmap, opened ports with nmap.
# list listening ports with nmap.
nmap <address>

##############################################################################
# scan a whole subminet, scan a submit, scan a ip range, scan ips.
nmap <x.y.z.*>

##############################################################################
# Scan a Host to check its protected by Firewall:
# To scan a host if it is protected by any packet filtering software or Firewalls.

nmap -PN 192.168.0.3
##############################################################################
# detect which os ip is running, get ip os, discover ip os, discover machine os, get machine os from ip.

nmap -O <ip>

##############################################################################
# mount cd rom for reading.

# check the mount point in /etc/fstab.
cat /etc/fstab
##############################################################################

# mount the file system.
sudo mount /dev/<sr0>
##############################################################################

# umount the file system.
sudo umount /dev/<sr0>
##############################################################################

# kill the processes using the device.
sudo fuser -k /dev/<sr0>

##############################################################################
# check, compare, integrity, md5sum, sha1sum of a file.
sha1sum <filename>
##############################################################################
# setup wifi access point.
sudo pacman -S create_ap
create_ap <wifi-device> <wired-device> <wif-name> <wifi-passphrase>

##############################################################################
# set, change, user, home, directory.

usermod -m -d </path/to/new/home/dir> <userNameHere>
##############################################################################
# check if environment variable exists.
# env | grep PATH

env | grep <name>
##############################################################################
# check, list, number, times, command, performed.
# hash keeps a hash table of commands used in the shell
# as well as the number of times it was hit.
hash | grep <command>

# it deletes the command from the hash.
hash -d <command>
##############################################################################
# fix, set, config, time, archlinux.
# sudo timedatectl set-time "03:12:10"

sudo timedatectl set-time "<hour:minute:second>"
##############################################################################
# detect, movement, around, check, record, video, intruser, guest.
# set up motion detect.            

sudo pacman -S motion
vy /etc/motion/motion.conf

# file where the videos are in.
# /var~/projects/motion
# set the values below to off.
# daemon off
# output_pictures off
##############################################################################
# count, files, dirs, in a dir.
ls -1 <dir> | wc -l
##############################################################################
# a windows thing.
# set, python, path, windows, command-line, recognize, find.
set path=%path%;C:\Python27\

# set the path permanently, windows.
# setx PATH "%PATH%;C:\Python27\"


##############################################################################
# highlight, pygment, html, code.

pygmentize -f html -O full,style=<style> -o <output.html> \
<input>
##############################################################################
# write, archlinux, iso, usb, image, disk.

cd /home/tau/Downloads

# check device.
fdisk -l

# Example.
# dd bs=4M if=archlinux-2016.02.01-dual.iso of=/dev/sdb;sync

dd bs=4M if=<archlinux.iso> of=/dev/<device>;sync
##############################################################################
# update, PATH, environment.

export PATH=$PATH:<dir>
##############################################################################
# set, default, editor, pick, config.

export EDITOR="<path>"
##############################################################################
# kernel, module, info, description.
modinfo <module>
##############################################################################
# generate, create, get, certificate, key, ssl.

openssl genrsa -des3 -out arcamens.key 1024
arcamens

openssl req -new -key arcamens.key -out arcamens.csr
arcamens
BR
rio de janeiro
rio das ostras
arcamens
iury
ioliveira@id.uff.br
arcamens
arcamens

openssl x509 -req -days 365 -in arcamens.csr -signkey arcamens.key -out arcamens.crt
arcamens
##############################################################################
# reset, mysql, password, root, forgot, missed, change.

# Resetting the root password of a MySQL database is trivial if you know the current password if you don't it is a little tricker. Thankfully it isn't too difficult to fix, and here we'll show one possible way of doing so.
# If you've got access to the root account already, because you know the password, you can change it easily:

mysql --user=root --pass mysql
update user set Password=PASSWORD('new-password-here') WHERE User='root';
flush privileges;
exit

# However if you don't know the current password this approach will not work - you need to login to run any commands and without the password you'll not be able to login!
# 
# Thankfully there is a simple solution to this problem, we just need to start MySQL with a flag to tell it to ignore any username/password restrictions which might be in place. Once that is done you can successfully update the stored details.
# 
# First of all you will need to ensure that your database is stopped:

/etc/init.d/mysql stop
# Now you should start up the database in the background, via the mysqld_safe command:

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

# Now that you've done that you just need to stop the server, so that you can go back to running a secure MySQL server with password restrictions in place. First of all bring the server you started into the foreground by typing "fg", then kill it by pressing "Ctrl+c" afterwards.
# 
# This will now allow you to start the server:

/etc/init.d/mysql start
# Now everything should be done and you should have regained access to your MySQL database(s); you should verify this by connecting with your new password:

exit

##############################################################################
# record wav/sounds on linux, wav.
arecord -vv -f cd test.wav



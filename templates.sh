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

gparted

# format the partition as ntfs.
cd /home/tau/Downloads
ls
# record the image.
# IT HAS TO BE /dev/sdb not /dev/sdb1.
dd if=<iso> of=/dev/<usb-device> bs=4M;sync
exit

##############################################################################
# variable, iterate, incremente, loop, for, display, files, variable. list, bash.

# iterate over files in a dir and increase a counter.
# maps the ~ files to numbers.

i = 0;
for item in $(ls) 
do
    echo "$((i++))"
done


##############################################################################
# test, check, perform, equality, if, else, or, operator, bash.

# condition using or, -o stands for or.
if [ 1 -eq 2 -o 1 -eq 1 ] ;
then
echo 'either 1 = 2 or 1 = 1'
fi
##############################################################################
# iterate, loop, variable, count, random, c like for, bash.

# generating random numbers with a c like statement.
for (( i=1; i <= 5; i++ ))
do
 echo "Random number $i: $RANDOM"
done

##############################################################################
# infinite loop, endless loop, for, bash.

i=1;
for (( ; ; ))
do
   sleep $i
   echo "Number: $((i++))"
done
##############################################################################

# iterate, loop, create, list, numbers, bash.
# iterate over a list of numbers.
for num in {1..10}
do
    echo "$num"
done

##############################################################################
# iterate, over, create, number, list, with increment, bash

# iterate over a list of numbers with increment.
for num in {1..10..3}
do
    echo "$num"
done

##############################################################################
# export, set, define, variable, environment, bash.
# export a variable to env, bash.
export FOO=10
env
##############################################################################
# export, define, set, function, environment, bash.

# it defines a function in bash then exports to environment.

function alpha() {
    echo 'Alpha Wolf'

}


export -f alpha
env | grep alpha

# the function alpha will be available to the environment.
# call, execute, function, bash.
alpha
##############################################################################
# set, define, variable, execute, eval, variable, code, bash.
export TETHA="ls"
echo `eval $TETHA`
##############################################################################
# restrict, set, array, list, readonly, bash.

# restrict an array as readonly.
readonly -a shells=("ksh" "bash" "sh" "csh" );

# access, array, list, element, bash.
# show, check, list, get, array, length.
# shows the number of elements in the array aka length.
echo ${#shells[@]}

# the @ stands for 'all' elements. if it is given just
echo ${shells}

# it would print just the first element.
# same about.
echo $shells

# copy, backup, array, list, bash.
alpha="${shells[@]}"
echo $alpha
##############################################################################
# check, show, access, script, args, argument, bash.
# it tests positional arguments.
# if no argument is given then the msg is print.
if test -z $1
then
        echo "The positional parameter \$1 is empty"
fi

##############################################################################
# mount, usb, pendrive, device.

sudo bash -i
fdisk -l
mount -t ntfs -o rw /dev/sdb1 /media/usb
exit
##############################################################################
cd /tmp
# generate, table of contents.
# get the release at.
# https://github.com/ekalinin/github-markdown-toc.go/releases

tar -zxvf <release>
mv <release> ~/bin
##############################################################################
# write, text, on, image.

convert -font helvetica -fill blue -pointsize 40 -draw "text <x0>,<y0> '<text0>'" -draw "text <x1>,<y1> '<text1>'" <input>.jpg <output>.jpg
##############################################################################
# install, package, nodejs, npm, global, root, superuser.

npm install -g <package>
##############################################################################
# remove, delete, uninstall, package, nodejs, npm, global, root, superuser.

npm uninstall -g jshint
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
# list, all, users, account, properties, linux.

sudo passwd -Sa
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
##############################################################################
cut -d: -f1 /etc/group

usermod -aG additional_groups username
##############################################################################
# set, config, wm, run, to, startx.

# reference: https://wiki.archlinux.org/index.php/xinitrc

# If .xinitrc is present in a user's home directory, startx and xinit execute it. Otherwise startx will run the default /etc/X11/xinit/xinitrc.
# Note: Xinit has its own default behaviour instead of executing the file. See man 1 xinit for details.
# This default xinitrc will start a basic environment with Twm, xorg-xclock and Xterm (assuming that the necessary packages are installed). Therefore, to start a different window manager or desktop environment, first create a copy of the default xinitrc in home directory:

cp /etc/X11/xinit/xinitrc ~/.xinitrc

# should call exec <wm> in the file below.
vy ~/.xinitrc
##############################################################################
# function, arguments, bash.

function <name> {
    echo "arg1 $1 arg2 $2 arg3 $3"

}

# calling the function.
<name> <arg0> <arg1> <arg2>
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
# show, message, dzen.
# example.
(echo "This is a message"; sleep 10) | dzen2 -bg darkred -fg grey80 -fn fixed 
##############################################################################
# schedule, month, remind with dzen.
(echo Monthly Schedule; remind -c1 -m) | dzen2 -l 52 -w 410 -p -fn lime -bg '#e0e8ea' -fg black -x 635

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
# dzen2, menu.

* Display message and timeout after 10 seconds:
    (echo "This is a message"; sleep 10) | dzen2 -bg darkred -fg grey80 -fn fixed 


* Display message and never timeout:
    echo "This is a message"| dzen2 -p


* Display updating single line message:
    for i in $(seq 1 20); do A=${A}'='; print $A; sleep 1; done | dzen2


* Display header and a message with multiple lines:
    (echo Header; cal; sleep 20) | dzen2 -l 8

    Displays "Header" in the title window and the output of cal in the 8
    lines high slave window.


* Display updating messages:
    (echo Header; while true; do echo test$((i++)); sleep 1; done) | dzen2 -l 12

    The slave window will update contents if new input has arrived.
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

ffmpeg -ss 00:00:30 -i orginalfile -t 00:00:05 -vcodec copy -acodec copy newfile
##############################################################################
# search, research, find, text, string, dir, files, recursive, recursively, folder, all, grep, locate.
# example grep -r -l "foo" .

grep -r -l "<string>" <folder>
##############################################################################
# delete, commit.
git reset --hard 602f5ad
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

ffmpeg -f alsa -i default -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 filename.avi
##############################################################################
# capture, record, video, deskto, ffmpeg, without, audio, low, quality.
# low quality.
ffmpeg  -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 filename.avi
##############################################################################
# capture, record, video, desktop, ffmpeg, without, audio, high, quality.
ffmpeg -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -vcodec libx264 -threads 0 <video.mkv>
##############################################################################
# capture, record, video, desktop, ffmpeg, without, audio, high, audio, quality, with.
ffmpeg -f alsa -i default -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -acodec pcm_s16le -vcodec libx264 -threads 0 output.mkv
##############################################################################
# update, arch, packages, system, whole, OS, os, apps, programs.

sudo pacman -Syu
y
##############################################################################
# install, i3, archlinux, setup, configure.

pacman -S xorg-xinit
pacman -S i3
pacman -S dmenu
pacman -S xterm

cp /etc/X11/xinit/xinitrc ~/.xinitrc

# Make i3 be started after:
# startx

echo 'exec i3' >> ~/.xinitrc
##############################################################################
# control, play, set, move, cursor, mouse, from, command, line, cli, send, keysstrokes, emulate, pressed.
# install xdotool, controls your mouse, permits you to set regex
# to search for window tittles.

# sends a click on the mouse positon.
xdotool click 1

# moves the mouse to 0 0.
xdotool mousemove 0 0

# moves the mouse to 0 0 then clicks.
xdotool mousemove 0 0 click 1

# send alt+2 keypress.
xdotool key alt+2
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

xrandr --output LVDS1 --brightness 0.7
##############################################################################

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
pip install -U package==version
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

zless filename
##############################################################################
# pip, install, requirements, files.

pip install -r <file>
##############################################################################
# fix, i3, su, root, call, startx, after, superuser, sudo, broken, .Xauthority.

# when calling startx as root from i3 it will turn .Xauthority ownership to root.

# in order to fix it just remove .Xauthority* files.
##############################################################################
# read, check, view, open, mimeapps, xdg, list, applications, default.
# view the default applications used to open filetypes based on mimetypes.
vy ~/.local/share/applications/mimeapps.list
vy ~/.local/share/applications/desktop-mimeapps.list
vy ~/.local/share/applications/chrome-app-list.desktop 
##############################################################################


# dzen2, menu.

* Display message and timeout after 10 seconds:
(echo "This is a message"; sleep 10) | dzen2 -bg darkred -fg grey80 -fn fixed 


* Display message and never timeout: with number of lines limited to 3.
echo 'This is a message e'| dzen2 -p -bg yellow -fg black -l 3

* Display updating single line message:
    for i in $(seq 1 20); do A=${A}'='; print $A; sleep 1; done | dzen2


* Display header and a message with multiple lines:
    (echo Header; cal; sleep 20) | dzen2 -l 8

    Displays "Header" in the title window and the output of cal in the 8
    lines high slave window.


* Display updating messages:
    (echo Header; while true; do echo test$((i++)); sleep 1; done) | dzen2 -l 12

    The slave window will update contents if new input has arrived.
##############################################################################
# send, directory to host machine with scp.

scp -r <folder> <user>@<hostname>:<destination>
 
# ex: scp -r root@tv:/var/www/html ./
##############################################################################
# send, copy file, to, host, machine, scp

scp -P 1022 <file> <user>@<host>:<destination>

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

convert SMFPress.png -channel Alpha -threshold 80% -resize 120x120 thumbnail.gif
convert img.png -channel Alpha  thumbnail.gif
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

# take, get, screenshot, imagemagick.
##############################################################################
# install imagemagick.
sudo pacman -S imagemagick

import -window root -quality 100 -silent "/tmp/screenshot-`date +%F[%R]`.jpg"

# take, screenshot, get, after, delay, vy.

sleep 4; import -window root -quality 100 -silent "/tmp/screenshot-`date +%F[%R]`.jpg"
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
# downgrade all packages arch linux
pacman -Syy

pacman -Suu

##############################################################################
#list #kernel #modules #loaded
lsmod 
##############################################################################
#load #kernel #module
modprobe <module>
##############################################################################

# install, arch.

loadkeys br-abnt2

# stabilish connection.
wifi-menu -o wlp2s0

# update time.
timedatectl set-ntp true

# check if uefi works.
ls /sys/firmware/efi/efivars

# create a new partition table
parted /dev/sda
mklabel gpt

# create UEFI partition.
mkpart ESP fat32 1MiB 513MiB

# set it as bootable.
set 1 boot on

# create the partitions, 100% means using the remaining free space.
mkpart primary linux-swap 513MiB 7GiB
mkpart primary ext4 7GiB 100%

# format uefi and root.
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda3

# enable swap partition
mkswap /dev/sda2
swapon /dev/sda2

mount /dev/sda3 /mnt

# create a /mnt/boot dir to mount the uefi partition.
mkdir -p /mnt/boot

# mount uefi partition in /mnt/boot.
mount /dev/sda1 /mnt/boot

# install the base system.
pacstrap -i /mnt base base-devel

# generate fstab file.
genfstab -U /mnt >> /mnt/etc/fstab

# change root
arch-chroot /mnt /bin/bash

# uncoment en_US.UTF-8 UTF-8 in
vi /etc/locale.gen

# then 
locale-gen

localectl list-locales
localectl set-locale LANG=en_US.UTF-8

# set keyboard permanently.
# /etc/vconsole.conf

KEYMAP=br-abnt2
FONT=lat9w-16

# select timezone
tzselect

ln -s /usr/share/zoneinfo/America/Sao_paulo /etc/localtime
hwclock --systohc --utc

# install boot loader, grub.
bootctl install

# set up systemd-boot
$esp/loader/loader.conf
default  arch
timeout  4
editor   0

# create the entry for the arch.
$esp/loader/entries/arch.conf
title          Arch Linux
linux          /vmlinuz-linux
initrd         /initramfs-linux.img
options        root=PARTUUID=value rw

# find the PARTUUID value, it is needed to select the device that
# was set as root.
blkid -s PARTUUID -o value /dev/sdxY

##############################################################################
# setup, SUDO_ASPASS, SSH_ASKPASS, variable, environment, run, commands, root, permission.

echo 'export SUDO_ASKPASS=askpass' >> ~/.bashrc
echo 'export SSH_ASKPASS=askpass' >> ~/.bashrc
##############################################################################



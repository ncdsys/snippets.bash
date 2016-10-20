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



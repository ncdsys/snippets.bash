##############################################################################
# bash add intergers, add numbers.
a=1
b=3
c=$(($a $b))
echo "c=$c"
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
# list, all, users, account, properties, linux.

sudo passwd -Sa

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

function func {
    echo "arg1 $1 arg2 $2 arg3 $3"

}

# calling the function.
func 1 2 'cool'
##############################################################################


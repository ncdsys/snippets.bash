# watch folder for changes with inotify and display dzen2 msg.
exit

# recursively watch all dirs.
inotifywait -m -r -e  create,modify /home/tau/projects/ | while read line
do
    echo $line | dzen2 -p

done

# for viewing the events.
man inotifywait

# not recursively, exists after the first change.
inotifywait -m -e create,modify,access /home/tau/projects/ | dzen2 -p


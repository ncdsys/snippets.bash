##############################################################################
# run #running #git #in #local #machine.
git init
git add *.zip
git commit -a -m 'Initial commit'
git remote add reef  edrx@reef:/sda5/hippiegoddess/
git fetch -v   reef
git pull


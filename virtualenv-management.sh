##############################################################################
# create #setup #virtualenv #project.
cd ~/.virtualenvs/
ls -la
# by default #python3 has executable named python in arch linux.
virtualenv <project> -p /usr/bin/python
##############################################################################
# activate #virtualenv #project.
cd ~/.virtualenvs/
source project/bin/activate
cd ~/projects/<project-code>
##############################################################################
# install #project #dependencies #virtualenv.
cd ~/.virtualenvs/
source project/bin/activate
cd ~/projects/<project-code>
pip install -r requirements.txt 
##############################################################################


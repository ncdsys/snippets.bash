##############################################################################
#share #put #place #host #package #python #pip #application #set #setup #config #configuration.

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


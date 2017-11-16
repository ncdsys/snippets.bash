##############################################################################
#set #upload #put #share #app #application #pip 

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


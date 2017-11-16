##############################################################################
# add #zip #zipping #password #file #password #security.
# Testing zip with password.

zip --password MY_SECRET foo.zip foo
ls
rm foo
unzip -P MY_SECRET foo
ls
cat foo
rm foo.zip
##############################################################################
# add #zip #zipping #password #file #password #security.
# Testing zip with password.

zip --password <password> <file.zip> <file>
##############################################################################
# unzip #zip #zipping #password #file #password #security.
# Testing zip with password.

unzip -P <password> <file.zip>
##############################################################################
# zip #folder #pack.

zip -r <file.zip> <folder>



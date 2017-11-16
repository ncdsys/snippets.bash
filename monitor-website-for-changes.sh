##############################################################################
# website monitoring
# This will curl every 10 seconds news.thesite.com and look for Awesomestring in it, 
# if it's there, the output will play a music file through xargs. If watch is not installed on your system, install it with brew.

watch -n10 "curl http://news.thesite.com | grep Awesomestring | xargs -I % /usr/bin/afplay ~/Music/my.mp3"


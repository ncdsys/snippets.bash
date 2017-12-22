##############################################################################
# get ipaddr and put it into clipboard.
# put my ipaddress on clipboard.
wget -qO- http://ipecho.net/plain  | xsel --clipboard -i
##############################################################################
# other way.
lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'


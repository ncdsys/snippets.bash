##############################################################################
# display message with dzen2 menu.

# * Display message and timeout after 10 seconds:
(echo "This is a message"; sleep 10) | dzen2 -bg darkred -fg grey80 -fn fixed 


# * Display message and never timeout:
echo "This is a message"| dzen2 -p


# * Display updating single line message:
for i in $(seq 1 20); do A=${A}'='; print $A; sleep 1; done | dzen2


# * Display header and a message with multiple lines:
(echo Header; cal; sleep 20) | dzen2 -l 8

# Displays "Header" in the title window and the output of cal in the 8
# lines high slave window.


# * Display updating messages:
(echo Header; while true; do echo test$((i++)); sleep 1; done) | dzen2 -l 12

# The slave window will update contents if new input has arrived.


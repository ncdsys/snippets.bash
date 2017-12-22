##############################################################################
# control/move mouse movements from CLI with xdotool.

# install xdotool, controls your mouse, permits you to set regex
# to search for window tittles.

# sends a click on the mouse positon.
xdotool click 1

# moves the mouse to 0 0.
xdotool mousemove 0 0

# moves the mouse to 0 0 then clicks.
xdotool mousemove 0 0 click 1

# send alt+2 keypress.
xdotool key alt+2


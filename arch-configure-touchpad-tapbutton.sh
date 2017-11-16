##############################################################################
# configure #setup #fix #touchpad #tapbutton #mouse #archlinux #xorg.

pacman -S xf86-input-synaptics
cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/

# example file.
# /etc/X11/xorg.conf.d/70-synaptics.conf

# add this section to the 70-synaptics.conf file.

# Section "InputClass"
    # Identifier "touchpad"
    # Driver "synaptics"
    # MatchIsTouchpad "on"
        # Option "TapButton1" "1"
        # Option "TapButton2" "3"
        # Option "TapButton3" "2"
# EndSection


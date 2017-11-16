##############################################################################
# make #fix #configure #setup #set keyboard #layout #arch #xorg #permanently.

# /etc/vconsole.conf
KEYMAP=br-abnt2
FONT=lat9w-16

# add this section to the /etc/X11/xorg.conf.d/00-keyboard.conf file.

# Section "InputClass"
        # Identifier "system-keyboard"
        # MatchIsKeyboard "on"
        # Option "XkbLayout" "br"
        # Option "XkbModel" "dell"
# EndSection


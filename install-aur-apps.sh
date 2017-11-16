##############################################################################
# install #aur #applications #apps #programs #packages

cd ~/Downloads
ls
tar -zxvf <package>
cd <package>
makepkg -sri

# install aur applications whose checksum doesnt match.
makepkg -g >> PKGBUILD

# example of error #using -g like this would fix the issue.
# ==> Validating source files with md5sums...
    # google-chrome-stable_60.0.3112.78_amd64.deb ... FAILED
    # eula_text.html ... Skipped
    # google-chrome-stable.sh ... Passed
# ==> ERROR: One or more files did not pass the validity check!


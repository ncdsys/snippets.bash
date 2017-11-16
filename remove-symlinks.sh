##############################################################################
# remove all symlinks in a directory, but leave the target files.

find <dir> -maxdepth 1 -type l -exec rm -f {} \;


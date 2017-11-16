##############################################################################
# Restore file & folder default permissions

find <dir> -type f -exec chmod 644 {} \;
find <dir> -type d -exec chmod 755 {} \;


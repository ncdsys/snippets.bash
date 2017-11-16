##############################################################################
# find and List files containing a certain string
# find <dir> -type f -name "*.py" | xargs grep -l "<string>"

find <dir> -type f -name "<pattern>" | xargs grep -l "<string>"
##############################################################################
# Find and List files not containing a certain string

find . -type f -name "*.file" | xargs grep -L "STRING"


##############################################################################
# rename all files in subdirectories from .ext0 to ext1.

find <dir> -type f -name '*.cpp' | while read filename; do mv -v "${filename}" "`echo "${filename}" | sed -e 's/\<ext0>/\<ext1>/'`"; done



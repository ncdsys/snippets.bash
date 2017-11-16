##############################################################################
# comment #listing #files #dir #folder #sed.
# prepends lines of text with character #sed #SED.

# it calls ls -la which produces output in lines.
# then it pipes the output to sed that uses 's' which means
# substitution. It means replace all ^ for the string '# '.
# the ^ stands for beginning of the line in regex.

ls -la <folder> | sed 's/^/# /'


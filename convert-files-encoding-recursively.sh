##############################################################################
# fix #convert #change #files #encoding

# Convert file encoding recursively

iconv -l 

find /Path/To/Files -name \*.xxx -type f | \
(while read file; do
iconv -f ISO-8859-1 -t UTF8 "$file" > "${file%.xxx}-utf8.xxx";
done);


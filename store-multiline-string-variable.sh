##############################################################################
# store #set #put #multiline #string #variable

# store multiline string in variabe.

read -d '' e<<STR
value
STR

echo $e


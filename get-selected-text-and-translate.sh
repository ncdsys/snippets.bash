##############################################################################
# get selected text.
# select a word/text then run xsel on terminal.
# suppose that the following text is selected.
# TEXT SELECTED.

# after running xsel.
xsel


# you get.

# TEXT SELECTED

##############################################################################
# get selected text and translate it with xsel.
# translate words with google translator.

# english to portuguese.
google-chrome "https://translate.google.com/#en/pt/nice"

# portuguese to english.
google-chrome "https://translate.google.com/#pt/en/maneiro"

# portuguese to english, using xsel to get the text from clipboard.
google-chrome "https://translate.google.com/#pt/en/`xsel`"

# english to portuguese, using xsel to get the text from clipboard.
google-chrome "https://translate.google.com/#en/pt/`xsel`"



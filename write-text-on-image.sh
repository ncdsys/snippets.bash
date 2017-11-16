# write #text #on #image #convert 

# example:
# convert -font Noto-Sans-UI -fill blue -pointsize 40 -draw "text 30,30 'iury'" -draw "text 30,70'com 3 anos'" eubebe.jpg eubebe2.jpg

# list available fonts.
convert -list font

convert -font helvetica -fill blue -pointsize 40 -draw "text <x0>,<y0> '<text0>'" -draw "text <x1>,<y1> '<text1>'" <input>.jpg <output>.jpg


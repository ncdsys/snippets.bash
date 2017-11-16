##############################################################################
# transform convert png into gif.

# resize
convert <input.png> -channel Alpha -threshold 80% -resize 120x120 <output.gif>

# dont resize.
convert <input.png> -channel Alpha  <output.gif>


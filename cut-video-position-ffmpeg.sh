##############################################################################
#cut #video #trim #ffmpeg #management

# the command below cuts the video from the position 00:00:30 to the position 00:00:35
# ffmpeg -i [input_file] -ss [start_seconds] -t [duration_seconds] [output_file]

ffmpeg -ss 00:00:30 -i <orginalfile> -t 00:00:05 -vcodec copy -acodec copy <newfile>


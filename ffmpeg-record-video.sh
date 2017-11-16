##############################################################################
# record #video #desktop #ffmpeg #with #audio.

ffmpeg -f alsa -i default -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 <filename.avi>
##############################################################################
# capture #record #video #deskto #ffmpeg #without #audio #low #quality.
# low quality.
ffmpeg  -f x11grab -s 1366x768 -r 30 -i :0.0 -qscale 0 filename.avi
##############################################################################
# capture #record video from desktop using ffmpeg without audio and high quality.
ffmpeg -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -vcodec libx264 -threads 0 <video.mkv>
##############################################################################
# capture #record video from desktop using ffmpeg with audio and high quality.
ffmpeg -f alsa -i default -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -acodec pcm_s16le -vcodec libx264 -threads 0 <output.mkv>


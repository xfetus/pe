# Convert gif to mp4

## reference
# https://stackoverflow.com/questions/20847674/ffmpeg-libx264-height-not-divisible-by-2 
ffmpeg -i outputs/slides.gif -vf scale=1280:-2 outputs/gif2mp4.mp4 


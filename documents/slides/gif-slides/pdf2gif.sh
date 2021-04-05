#!/bin/bash

# References
# http://phyletica.org/imagemagick/

# cp pdf to /slides-gif
echo '(1) cp pdf to /slides-gif'
cp ../*.pdf .

# pdf2png
echo '(2) pdf2png'
convert -density 500 *.pdf -strip -resize @1048576 PNG8:slide-%02d.png

# png2gif
echo '(3) png2gif'
convert -layers OptimizePlus -delay 75 slide-??.png -loop 0 slides.gif
## delay 50 in each slides and then loop it! 

#convert -layers OptimizePlus -delay 75 slide-0?.png slide-1[01234].png -delay 300 slide-1[567].png -loop 0 slides.gif
## The options in the command above specify to spend 3/4 of a second on the first 15 slides, and then 3 seconds on the last three slides. 

# delete png images
echo '(4) remove *.png *.pdf'
rm  *.png *.pdf

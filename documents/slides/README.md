# Slides

## Slides
[![GitHub Actions Status](https://github.com/ofetus/us-simulator/workflows/Compiling-TeX-Slides/badge.svg)](https://github.com/ofetus/us-simulator/actions) [![slides](https://img.shields.io/badge/read-slides-blue.svg)](https://github.com/ofetus/us-simulator/blob/pdfs/slides.pdf)

## Building tex with ci:
Commit changes
```
git add -A
git commit -m 'genesis of slides'
git push origin branchname
```
more: https://github.com/free-cortex/framework/tree/main/workflow 

## Local build
### Requirements 
* Install latest version of (i.e., Tex Live 2020 [:link:](https://github.com/mxochicale/latex/tree/master/installation)).
* sudo apt-get install python-pygments #https://tex.stackexchange.com/questions/40083/how-to-install-minted-in-ubuntu

## local build
make clean && make && evince main.pdf

## Dependencies 
* https://github.com/pdfpc/pdfpc
```
sudo apt-get install pdf-presenter-console
```

## view slides 
``` 
cd $HOME/~/FETUS/us-simulator/documents/slides
# use -w to run in windowed mode
pdfpc -w main.pdf
```

"This is the command I used to start pdfpc having the speaker and presentation windows with the countdown timer set at 3 minutes and a warning time of 1 minutes."
```
pdfpc -w both -d 3 -l 1 main.pdf
```



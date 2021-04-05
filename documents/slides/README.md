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

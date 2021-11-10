# Slides
[![GitHub Actions Status](https://github.com/ofetus/us-simulator/workflows/Compiling-TeX-Slides/badge.svg)](https://github.com/ofetus/us-simulator/actions) [![slides](https://img.shields.io/badge/read-slides-blue.svg)](https://github.com/ofetus/us-simulator/blob/pdfs/slides.pdf)

## Building tex with CI
Commit changes
```
git add -A
git commit -m 'genesis of slides'
git push origin branchname
```
add CI-SLIDES anywhere in the commit message to build tex files with github action.

See more details on the CI build: https://github.com/free-cortex/framework/tree/main/workflow 

## Local build in Ubuntu 18.04 x64
### Requirements and dependencies
* Install the latest version of (i.e., Tex Live 2020 [:link:](https://github.com/mxochicale/latex/tree/master/installation))  
* Install-minted-in-ubuntu [:link:](https://tex.stackexchange.com/questions/40083/how-to-install-minted-in-ubuntu)
```
sudo apt-get install python-pygments
```
* Install pdfpc [:link:](https://github.com/pdfpc/pdfpc)
```
sudo apt-get install pdf-presenter-console
```
### local build
``` 
cd $HOME/repositories/xfetus/public-engagement-project/documents/slides/WEK2021/
bash local-tex-build.bash
```
### view slides 
``` 
cd $HOME/repositories/xfetus/public-engagement-project/slides/WEK2021/
# use -w to run in windowed mode
pdfpc -w main.pdf
```
"This is the command I used to start pdfpc having the speaker and presentation windows with the countdown timer set at 3 minutes and a warning time of 1 minutes."
```
pdfpc -w both -d 3 -l 1 main.pdf
```

## Local build in Windows 10 Enterprise Version 1803
### Installation of dependencies
01. Download [install-tl-windows.exe for Windows (18mb)](https://tug.org/texlive/acquire-netinstall.html)
02. Install TexLive at TEXDIR C:/texlive/2020; 
    * (run it anyway)
    * Disk space 7293 MB 
    * Tex Live Installer might take few minutes (90mins ish) as ~4056 packages are installed.
03. "When installation is complete, you will have to restart Windows, 
    and then you can run the TEX programs from a command prompt."
    [:link:](https://accelconf.web.cern.ch/Workshop99/Proceedings/Goossens.pdf)
04. Install Cygwin (Get that Linux feeling - on Windows)  
    04.01 Download and run [setup-x86_64.exe](https://cygwin.com/install.html)  
        Install it from the internet  
    04.02 Running installation  
        * Location: C:\cygwin64  
        * Use System Proxy Settings  
        * Choose a mirror   
        * Make sure to select the latest installers of: make, vim, evince.   
   04.03 Add these lines your .bashrc (vim .bashrc)  
        * alias cdc='cd /cygdrive/c'  
        * ll = 'ls -la'  
        * export C=/cygdrive/c  
   04.04 Close and open Cygwin  
   04.05 Accessing your files   
        cd /cygdrive/c/Users/$USERNAME/$REPOSITORY_PATH/$PATH_OF_TEX_PROJECT

### Local build
01. Open Cygwin64
02. Go to with `cd /cygdrive/c/Users/$REPOSITORY_PATH/$PATH_OF_TEX_PROJECT`
03. Built, clean and view
    * `make` 
    * cygstart.exe main.pdf #to view pdf
    * `make clean`
    

## Figures workflow using vector images
To create figures using vector files with inkscape, the following template is used 
where vectors path has svg files, `drawing-vNN.svg` where NN is the number of version, 
reference for other images and versions for png or pdf outputs. See one example of
 the path organisation:
```
.
├── Makefile
├── README.md
├── references
│   └── README.md
├── vectors
│   └── drawing-v00.svg
│   └── drawing-v01.svg
└── versions
    ├── drawing-v00.png
    ├── drawing-v01.png
    └── README.md
```
When creating a new version, modify `/vectors/drawing-v00.svg` 
and use the latest version for instance, a copy of v02 to create for instance v03.

### GNU/Linux users:
Type the following in the terminal
```
make
mv versions/drawing.png versions/drawing-vNN.png #todo: add this in the makefile
```

### Windows users:
open /svgpath/drawing.svg with inkscape using the explorer to make modifications (use `explorer .` in Cygwin)
Then go to the menu `File>Export PNG image...>[page]` export the figure. 
In such window select path and filename to be, for instance, `/versions/drawing-v03.png` and click Export

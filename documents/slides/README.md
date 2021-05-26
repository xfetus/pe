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
bash local-tex-build.bash
```
### view slides 
``` 
cd $HOME/~/FETUS/us-simulator/documents/slides
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
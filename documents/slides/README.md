# Slides

## Building tex with ci:
Commit changes
```
git add -A
git commit -m 'genesis of slides'
git push origin branchname
```

## Local build
### Requirements 
* Install latest version of (i.e., Tex Live 2020 [:link:](https://github.com/mxochicale/latex/tree/master/installation)).
* sudo apt-get install python-pygments #https://tex.stackexchange.com/questions/40083/how-to-install-minted-in-ubuntu

## local build
make clean && make && evince main.pdf


# Packaging

### Tinkercad and freecad 
Using https://www.tinkercad.com the following models have been created:

### References
* http://yuichitamiya.fabcloud.io/fabacademy2020/projects/freecad_stl_step/
* https://github.com/fogleman/simplify


### Simplify meshes
``` 
cd $HOME/repositories
#git clone git@github.com:fogleman/simplify.git
#cd simplify
#go get -u github.com/fogleman/simplify/cmd/simplify
go install github.com/fogleman/simplify/cmd/simplify@latest
go env # to see where the bin files are in your user account
cd  $HOME/go/bin
./simplify -f 0.1 $HOME/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/legacy/week-12-growing-baby.stl $HOME/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/meshes-less-than-300000triangles/week-12-growing-baby-f01.stl
```

* check  (or install go version ) [https://linuxconfig.org/how-to-install-go-on-ubuntu-20-04-focal-fossa-linux](:books:) 
``` 
go version
go version go1.17.1 linux/amd64 
```

* terminal output
``` 
~/go/bin$ ./simplify -f 0.1 $HOME/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/legacy/week-04-growing-baby.stl $HOME/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/meshes-less-than-300000triangles/week-04-growing-baby-f01.stl
Loading /home/mx19/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/legacy/week-04-growing-baby.stl
Input mesh contains 149506 faces
Simplifying to 10% of original...
Output mesh contains 14950 faces
Writing /home/mx19/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/meshes-less-than-300000triangles/week-04-growing-baby-f01.stl
```

* Figures 

https://www.tinkercad.com/things/aK8zw1Kpa4C-surprising-fyyran-bigery/edit 
![f](figures/Screenshot%20from%202021-10-21%2012-30-18.png)



## References
https://www.youtube.com/watch?v=OGUMB0PNAwE 



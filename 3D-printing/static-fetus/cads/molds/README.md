# Molds for 3D printing fetuses

## Simplify meshes
### Install dependencies 
``` 
cd $HOME/repositories
#git clone git@github.com:fogleman/simplify.git
#cd simplify
#go get -u github.com/fogleman/simplify/cmd/simplify
go install github.com/fogleman/simplify/cmd/simplify@latest
go env # to see where the bin files are in your user account
```

* check  (or install go version ) [https://linuxconfig.org/how-to-install-go-on-ubuntu-20-04-focal-fossa-linux](:books:) 
``` 
go version
go version go1.17.1 linux/amd64 
```

### Usage 
* Example
``` 
cd  $HOME/go/bin
./simplify -f 0.1 $HOME/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files/legacy/week-12-growing-baby.stl $HOME/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files/meshes-factor-f01/week-12-growing-baby-f01.stl
```

* terminal output
``` 
./simplify -f 0.1 $HOME/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files/legacy/week-04-growing-baby.stl $HOME/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files/meshes-factor-f01/week-04-growing-baby-f01.stl
Loading /home/mx19/xfiles/xfetus/public-engagement-project/3D-printing/foetuses/static-fetus/references/stl-files/legacy/week-04-growing-baby.stl
Input mesh contains 149506 faces
Simplifying to 10% of original...
Output mesh contains 14950 faces
Writing /home/mx19/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files/meshes-factor-f01/week-04-growing-baby-f01.stl
```

* See mesh outputs in freecad
```
cd $HOME/repositories/xfetus/public-engagement-project/3D-printing/static-fetus/cads/stl-files
cd meshes-factor-tests/
freecad week-12-growing-baby-f005.stl # Choose gesture navigation style; and scroll of the mouse to visualise CAD 
```

* See mesh outputs in github
Open stl-files in your browser (e.g., [stl-files/meshes-factor-f005](../stl-files/meshes-factor-f005)). 

## CADs molds in Tinkercad 
Open stl files in https://www.tinkercad.com (you need to create an account) and made changes to your cad files as shown below.
![f](figures/Screenshot%20from%202021-10-25%2011-04-21.png)
**Fig 1.** CAD file at https://www.tinkercad.com/things/aK8zw1Kpa4C-surprising-fyyran-bigery/edit which STL files are [here](stl-files).     

### Notes   
* Shu Wang pointed out few recommendations for CADs
	* the common way to create molds is using TinkerCAD.
	* The mold for fetus can be done in one piece.
	* The mold requires one hole at the top of the mold to inject material.  

* Maleeha Al-Hamadani made the following comments on Wed  3 Nov 17:25:47 GMT 2021
	* the use of https://www.meshmixer.com/ would create smoother and more accurate messhes than those created with cura.
	* Another software for meshes can be https://www.meshlab.net/


## References
* http://yuichitamiya.fabcloud.io/fabacademy2020/projects/freecad_stl_step/
* https://github.com/fogleman/simplify
* https://www.youtube.com/watch?v=XV7UgCL6AyI
* https://www.youtube.com/watch?v=bNKJvvuZ7yQ
* https://www.youtube.com/watch?v=OGUMB0PNAwE

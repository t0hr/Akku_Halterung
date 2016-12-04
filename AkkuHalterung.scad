////////////////////////////////////////////////
/////////////Open SCAD /////////////////////////
////////////////////////////////////////////////

date started  ///2016
date finished
modler @paradroid_
*/

////////////////////////////////////////////////
////////////////////parameters//////////////////
////////////////////////////////////////////////

radiusCY= 2;

widthC = 5;
lengthC=5;

hightCY4=1000; 
radiusCYT=2;
radiusCYXT=40;
widthC2 = 2;
lengthC2 = 6;
hightC = 10;

hightC2 =20;
radiusCY2 =2 ;

widthC3=5; 
lengthC3=5; 
hightC2=10;

radiusCYX=10;
hightCY3= 200;

hightCYA = 10;
radiusCYXA= 1; 
radiusCYXA=1;

////////////////////////////////////////////////
/////////////////////renders////////////////////
////////////////////////////////////////////////
maincube();
bottomplate();
translate([-1.5, -1.5, 0]) legs();
translate([-1.5,  1.5, 0]) legs();
translate([ 1.5, -1.5, 0]) legs();
translate([ 1.5,  1.5, 0]) legs();

////////////////////////////////////////////////
////////////////////modules/////////////////////
////////////////////////////////////////////////
$fn = 50;

module maincube(){
    difference(){
        union() {
            translate([0, -3,-5]) cube([widthC2, lengthC2, hightC]);
            cube([widthC, lengthC, hightC], center=true);
        }
        cylinder(hightC*2, radiusCY, radiusCY, center=true);
    }
}

module bottomplate(){
    difference(){
        translate([0, 0, -5])
            cube([widthC3, lengthC3, hightC3], center=true);
        translate([0, 0, -5])
            cylinder([hightCY3, radiusCYX, radiusCYX], center=true);
    }
}
     
module legs(){ 
    translate([0, 0, -6])
        cylinder ([hightCYA, radiusCYXA, radiusCYXA], center=true );
}

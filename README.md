# Akku_Halterung
LiFePo4 Akku Halterung
////////////////////////////////////////////////
/////////////Open SCAD ////////////////////////
/*//////////////////////////////////////////////

date started  ///2016
date finished
modler @paradroid_
*/

/*

cylinder ([]) ;   sphere();  cube([]);

*/
///////////////////////////////////////////////

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
///////////////////////////////////////////////
maincube();
connectors();
translate([-1, -4, 0]);
connectors();
bottomplate();
legs();
translate([-3, 0, 0])
legs();
translate([0, -3, 0])
legs();
translate([-3, -3, 0])
legs();


////////////////////////////////////////////////
////////////////////modules////////////////////
///////////////////////////////////////////////
$fn = 50;

module maincube(){
    
    
        
  
    
    difference(){
        
      cube ([widthC, lengthC, hightC], center= true);
        
      cylinder (hightC, radiusCY,radiusCY, center=true );
   
    }
}
  module connectors(){
       difference(){
      translate([0, -3,-5])
        cube([widthC2, lengthC2, hightC]);
           translate([0, -.04, 0])  
          cylinder (hightC2, radiusCY2, radiusCY2, center=true );
        
       }
   }
   module bottomplate(){
         difference(){
        translate([0, 0, -5])
      cube ([widthC3, lengthC3, hightC3], center= true);
        translate([0, 0, -5])
     cylinder ([hightCY3, radiusCYX, radiusCYX], center= true  );
         }
     }
     module legs(){ 
         translate([1.5, 1.5, -6])
           cylinder ([hightCYA, radiusCYXA, radiusCYXA], center= true );
     }

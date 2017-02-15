////////////////////////////////////////////////
/////////////Open SCAD /////////////////////////
////////////////////////////////////////////////

///date started///2016
//date finished
//modler @paradroid_
//totalhight : 12.15 121,5
//Innredurchmesser : 2.81cm (28,1mm)
//ausedurchmesser : 3.629cm (36.29mm)




////////////////////////////////////////////////
////////////////////parameters//////////////////
////////////////////////////////////////////////

radius_mainCylinder= 20;

width_mainCube=45;
length_mainCube=45;

width_Connectors = 3;
length_Connectors = 7.5;
hight_mainCube = 60.75;

width_bottomPlate=45; 
length_bottomPlate=45; 
hight_bottomPlate=5;


hight_Leg= 20;
radius_Leg=3;

////////////////////////////////////////////////
/////////////////////renders////////////////////
////////////////////////////////////////////////<f
difference(){
mainCube();
    
    translate([-18,-2,])legconnectors();
    translate([13,-2,])legconnectors();
    
}
translate() 

connectorpos();

difference(){

translate([0,0,-25]) 
    
    bottomplate();
    
    rotate([180])
    hole();
}


translate([-15.4, 20, -25]) legs();
translate([15.6,  20, -25]) legs();

//translate([ 1.5, -1.5, 0]) legs();
///translate([ 1.5,  1.5, 0]) legs();

////////////////////////////////////////////////
////////////////////modules/////////////////////
////////////////////////////////////////////////
$fn = 50;

module mainCube(){
    difference(){
        union() {
            cube([width_mainCube, length_mainCube, hight_mainCube], center=true);
        }
        cylinder(hight_mainCube, radius_mainCylinder, radius_mainCylinder, center=true);
    
    union() {
        rotate([0,0,270]){
            translate([-22.6,10,-30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
        }
        
        translate([-22.5,-17,-30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    
    translate([19.5, -17, -30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    
//    translate([19.5, 10, -30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    
}
}
}
module bottomplate(){

        translate([0, 0, -6])
            cube([width_bottomPlate, length_bottomPlate, hight_bottomPlate], center=true);

            
}
 
module legconnectors(){
   translate([2.8, -16 ,10.376])
       cylinder (hight_Leg, radius_Leg, radius_Leg);
}
module legs(){ 
    translate([0, -3, -18.5])
        cylinder (hight_Leg, radius_Leg, radius_Leg, center=true );
}
module connectors(){
    translate([-5, 3.5, -5]){
    cube([width_Connectors, length_Connectors, hight_mainCube]);
   

}
}
module connectorpos(){
    rotate([0,0,90]){
    union() {
//        translate([-25,10.5,-30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
        rotate([0,0,90]){
            translate([-25.59,-17.5,-30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    }   
}
    rotate([0,0,90]){
    translate([22.5, -17.5, -30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    }
    translate([22.5, 10.5, -30]) cube([width_Connectors, length_Connectors, hight_mainCube]);
    
   // rotate([90,90,0]){
    //translate([-33,10,-30]) #cube([width_Connectors, length_Connectors, hight_mainCube]);
        
      //      translate([-33,-17,-30]) #cube([width_Connectors, length_Connectors, hight_mainCube]);
    //rotate([90,0,0]){
    //translate([-34, -18, -30]) #cube([width_Connectors, length_Connectors, hight_mainCube]);
    
    //translate([-34, 10, -30]) #cube([width_Connectors, length_Connectors, hight_mainCube]);
    }
    }



//translate ([-10,-10,20])#cube(20);
module hole(){        
    translate ([0, 0, 25])
  cylinder(30, 19, 3);
}

module Newconnector(){
    cube([]);
}

//module connetorTry
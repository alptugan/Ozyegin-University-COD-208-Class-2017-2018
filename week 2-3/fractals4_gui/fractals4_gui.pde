// import gui lib
import controlP5.*;

ControlP5 cp5;

float angle = 25;
float angle2 = 30;

float animFacAngle;
float opacityFac;

float thickness = 12;
float lengthFac1 = 0.56;
float lengthFac2 = 0.7;

void setup() {
  size(400,400);
  
  cp5 = new ControlP5(this);
  cp5.addSlider("angle")
  .setPosition(20,20)
  .setRange(0,100);
}

void draw() {
  background(#27AE60);
  pushMatrix();
  translate(width*0.5,height);
  branch(100 + animFacAngle);
  popMatrix();
  
  animFacAngle = sin(millis() * 0.001) * 4;
  //println(animFacAngle);
}

void branch(float len) {
  stroke(255,255,255);
/*  
  if(len > 90) {
     thickness = 10; 
  }
  else if(len > 80) {
    thickness = 8; 
  }
  else if(len > 45) {
    thickness = 6; 
  }
  else if(len > 35) {
    thickness = 3; 
  }
  
  else if(len > 15) {
    thickness = 1; 
  }
  
  strokeWeight(thickness);*/
  line(0,0,0,-len);
  

  translate(0,-len);
  
  if(len > 6) {
     pushMatrix();
     rotate(radians(angle + animFacAngle));
     branch(len*lengthFac1);
     noStroke();
     fill(255,0,0,opacityFac);
     ellipse(2,0,2+animFacAngle,2+animFacAngle);
     popMatrix();
     
     pushMatrix();
     rotate(radians(-angle2));
     branch(len*lengthFac2);
     noStroke();
     // Set the opacity of fruits 
     // map the "animFacAngle" value between 0 - 255
     opacityFac = map(animFacAngle,-5,5,0,255);
     
     fill(0,0,0,opacityFac);
     ellipse(-2,0,3+animFacAngle,3+animFacAngle);
     popMatrix();
  }
}
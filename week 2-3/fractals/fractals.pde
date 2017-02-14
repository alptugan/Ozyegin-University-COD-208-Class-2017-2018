float angle = 25;
float angle2 = 30;

float animFacAngle;
float opacityFac;

void setup() {
  size(400,400);
  
}

void draw() {
  background(#27AE60);
  pushMatrix();
  translate(width*0.5,height);
  branch(100+animFacAngle);
  popMatrix();
  
  animFacAngle = sin(millis() * 0.001) * 5;
  //println(animFacAngle);
}

void branch(float len) {
  stroke(255,255,255);
  line(0,0,0,-len);
  

  translate(0,-len);
  
  if(len > 6) {
     pushMatrix();
     rotate(radians(angle + animFacAngle));
     branch(len*0.67);
     popMatrix();
     
     pushMatrix();
     rotate(radians(-angle2));
     branch(len*0.67);
     noStroke();
     
     opacityFac = map(animFacAngle,-5,5,0,255);
     
     fill(0,0,0,opacityFac);
     ellipse(0,0,3+animFacAngle,3+animFacAngle);
     popMatrix();
  }
}
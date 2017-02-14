void setup() {
  size(400,400);
}

void draw() {
  background(#27AE60);
  pushMatrix();
  translate(width*0.5,height);
  branch(100);
  popMatrix();
}

void branch(float len) {
  stroke(255);
  line(0,0,0,-len);
  
  translate(0,-len);
  
  if(len > 4) {
     pushMatrix();
     rotate(PI/4);
     branch(len*0.67);
     //fill(255,0,0);
     //noStroke();
     //ellipse(0,0,3,3);
     popMatrix();
     
     pushMatrix();
     rotate(-PI/4);
     branch(len*0.67);
     popMatrix();
  }
}
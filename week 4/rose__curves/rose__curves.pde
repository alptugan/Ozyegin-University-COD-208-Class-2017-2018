float r = 100;
float magnitude = 100;
float theta = 0;
float x;
float y;
float k = 3;

void setup() {
  size(600,600);
}


void draw() {
  background(0);
  
  pushMatrix();
  translate(width*0.5,height*0.5);
  
  // draw shape
  noFill();
  beginShape();
  for(int i=0; i < 50; i = i + 1) {
    
    theta = map(i,0,50,0,TWO_PI);
    
    r = cos(k*theta);
    
    x = cos(theta) * r;
    y = sin(theta) * r;
    
    stroke(255);
    
    vertex(x,y);
    //point(x,y);
  }
  endShape(CLOSE);
  popMatrix();
  
}
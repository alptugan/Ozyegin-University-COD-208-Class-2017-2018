/* 
In mathematics, a rose or rhodonea curve 
is a sinusoid plotted in polar coordinates.
*/
float r = 100;
float theta;
float x;
float y;
float k = 10;

void setup() {
  size(600,600);
  
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  //fill(255);
  noFill();
  stroke(255);
  beginShape();
  for(int i = 0; i < 100; i++) {
    
    theta = map(i,0,100,0,TWO_PI);
    
    r = 100 * cos(k*theta);
    x = r * cos(theta);
    y = r * sin(theta);
    
    vertex(x,y);
  }
  endShape(CLOSE);
  popMatrix();
}
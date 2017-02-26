/* 
In mathematics, a rose or rhodonea curve 
is a sinusoid plotted in polar coordinates.
*/


float r = 200;
float petalLen;
int resolution = 100;
float theta;
float x;
float y;
float k;
float n = 7;
float d = 9;
float c = 0.09;
void setup() {
  size(600,600);
  k = n / d;
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  //fill(255);
  noFill();
  stroke(255);
  beginShape();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i,0,resolution,0,TWO_PI);
    
    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  endShape(CLOSE);
  popMatrix();
}
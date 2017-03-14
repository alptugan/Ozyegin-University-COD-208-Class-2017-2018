float angle = 0;
float r;
// Coordiantes
float x;
float y;
float z;

// angle values /(long. - lat. angles)
float phi;
float theta;

float lon = 144.9631;
float lat = -37.8136;

void setup() {
  size(600,600,P3D);
}


void draw() {
  background(51);
  // move to center of the canvas
  translate(width*0.5,height*0.5);
  
  angle += 0.05; // angle = angle + 0.05
  rotateY(angle);
  
  // enable lights
  lights();
  
  // hide strokes
  noStroke();
  // change fill color
  fill(200);
  //draw sphere
  sphere(200);
  
  theta = radians(lat) + PI / 2;
  phi   = radians(lon) + PI;
  
  x = r * sin(theta) * cos(phi);
  y = r * sin(theta) * sin(phi);
  z = r * cos(theta);
  
  translate(x,y,z);
  box(10);
}
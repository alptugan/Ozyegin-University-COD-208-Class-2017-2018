float angle = 0;
float r = 200;
// Coordiantes
float x;
float y;
float z;

// angle values /(long. - lat. angles)
float phi;
float theta;

float lon = 144.9631;
float lat = -37.8136;
float mag;
float h;
float maxh;

// Variable that holds the earthquake data
Table table;
PImage earth;
PShape globe;

void setup() {
  size(600, 600, P3D);
  table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");
  
  earth = loadImage("earth.jpg");
  
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(earth);
}


void draw() {
  background(51);
  // move to center of the canvas
  translate(width*0.5, height*0.5);

  angle += 0.05; // angle = angle + 0.05
  rotateY(angle);

  // enable lights
  lights();

  // hide strokes
  noStroke();
  // change fill color
  fill(200);
  //draw sphere
  //sphere(200);
  shape(globe);
  
  for (TableRow row : table.rows()) {
    lat = row.getFloat("latitude");
    lon = row.getFloat("longitude");
    mag = row.getFloat("mag");

    //println(lat,lon,mag);

    theta = radians(lat) + PI / 2;
    phi   = radians(lon) + PI;

    x = r * sin(theta) * cos(phi);
    y = r * sin(theta) * sin(phi);
    z = r * cos(theta);
    
    h = pow(10,mag);
    maxh = pow(10,6);
    h = map(h,0,maxh,20,100);
    
    PVector pos = new PVector(x,y,z);
    PVector xaxis = new PVector(1,0,0);
    float angleb = PVector.angleBetween(xaxis,pos);
    PVector raxis = xaxis.cross(pos);
    
    pushMatrix();
    translate(x, y, z);
    rotate(angleb,raxis.x,raxis.y,raxis.z);
    fill(0,200,0);
    box(h,5,5);
    popMatrix();
  }
}
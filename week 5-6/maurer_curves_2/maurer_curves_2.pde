import controlP5.*;
import processing.pdf.*;
boolean record;
/* 

 In mathematics, a rose or rhodonea curve 
 is a sinusoid plotted in polar coordinates.
 */
ControlP5 cp5;


int r = 250;
float petalLen;
int resolution = 100;
float theta;
float x;
float y;
float k;
float z;
int n = 5;
int d = 96;
float c = 0;

float colorChange;

int errFac = 38;

int index = 0;
float animationVal1;

void setup() {
  //fullScreen();
  size(600, 600, P2D);

  cp5 = new ControlP5(this);



  cp5.addSlider("resolution")
    .setLabel("Number of Points")
    .setPosition(20, 20)
    .setRange(20, 300)
    ;

  cp5.addSlider("r")
    .setLabel("Radius")
    .setPosition(20, 32)
    .setRange(20, 300)
    ;

  cp5.addSlider("n")
    .setLabel("n Value")
    .setPosition(20, 44)
    .setRange(0, 50)
    .setNumberOfTickMarks(51);

  cp5.addSlider("d")
    .setLabel("d Value")
    .setPosition(20, 56)
    .setRange(0, 300)
    .setNumberOfTickMarks(51);

  cp5.addSlider("c")
    .setLabel("Offset Value")
    .setPosition(20, 68)
    .setRange(0, 1)
    ;
}


void draw() {
  
  animationVal1 = sin(millis()*0.001)*d;
  
  if (record == true) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "testest.pdf");
  }

  background(0);
  pushMatrix();
  
  translate(width*0.5, height*0.5);
  
  //rotate(PI);
  
  //fill(255);
  noFill();
  

  k = n / d;

  beginShape();
  for (int i = 0; i < 359; i++) {
    colorChange = map(i,0,359,0,255);
    
    theta = map(i*(animationVal1), 0, 359, 0, TWO_PI);
    stroke((i+1)%255,map(theta,0,PI,0,255),colorChange);
    petalLen = cos(n*theta) + c;

    x = r * petalLen * sin(theta);
    y = r * petalLen * cos(theta);
    //z = r * petalLen * cos(theta*0.5);
    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();

  if (record == true) {
    endRecord();
    record = false;
  }
  
  if(frameCount % 25 == 0) {
      //println(frameCount);
      //saveFrame(str(index) + "-output.gif");
      index = index + 1;
  }
}

// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = true;
}
Stepper line1;
Stepper line2;

int counter;

void setup() {
  size(600,600);
  counter = 0;
  
  line1 = new Stepper("right");
  line2 = new Stepper("left");
}


void draw() {
  
  background(0);
  line1.display(200 + counter,1);
  line2.display(220,2);
  
  counter = counter + 1;
  
  if(counter > height) {
    counter = 0;
  }

  
}
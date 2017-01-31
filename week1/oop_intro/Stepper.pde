class Stepper {

  int stepSize = 0;
  float increment = random(2, 5);
  String dir;
  
  Stepper(String direction) {
    dir = direction;
  }
  
  void display(int ypos,float lineThickness) {

    stroke(255);
    strokeWeight(lineThickness);
    line(stepSize, stepSize/2, stepSize, ypos);

    if (dir == "right") {
      stepSize = stepSize + int(increment);

      if (stepSize > width) {
        stepSize = 0;
      }
    }
    
    
    if (dir == "left") {
      stepSize = stepSize - int(increment);

      if (stepSize < 0) {
        stepSize = width;
      }
    }
    
    
  }
}
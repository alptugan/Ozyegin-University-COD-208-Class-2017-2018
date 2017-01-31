class Bot {
  
  // current x & y coordinates
  int x;
  int y;

  // previous x & y coordinates
  int px;
  int py;

  Bot() {
    
    
    
    // starting point
    x = width/2;
    y = height/2;
    
    px = x;
    py = y;
    
  }


  void display() {
    
    // Stroke color
    stroke(0);

    line(px, py, x, y);
    
    fill(255,0,0);
    noStroke();
    //ellipse(x,y,5,5);
    //point(x,y);
    px = x;
    py = y;
  }

  void step() {
   
    int choice = int(random(4));

    if (choice == 0) {
      //x++;
      x += 4;
    } else if (choice == 1) {
      //x--;
      x -= 4;
    } else if (choice == 2) {
      //y++;
      y += 4;
    } else {
      y -= 4;
      //y--;
    }
  }
}
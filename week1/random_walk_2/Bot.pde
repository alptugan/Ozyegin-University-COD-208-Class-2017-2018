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
    
    
    
    fill(255,0,0);
    noFill();
    noStroke();
    //ellipse(x,y,3,3);
    //point(x,y);
    
    
    // Stroke color
    stroke(0);

    //line(px, py, x, y);
    bezier(px,py,px+2,py+2, px-2,py+2,x,y);
    px = x;
    py = y;
  }

  void step() {
   
    int choice = int(random(4));

    if (choice == 0) {
      //x++;
      x += 8;
    } else if (choice == 1) {
      //x--;
      x -= 8;
    } else if (choice == 2) {
      //y++;
      y += 8;
    } else {
      y -= 8;
      //y--;
    }
  }
}
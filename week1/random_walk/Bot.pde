class Bot {
  int x;
  int y;

  int px;
  int py;

  Bot() {
    x = width/2;
    y = height/2;
    
    px = x;
    py = y;
  }


  void display() {
    stroke(0);

    line(px, py, x, y);

    px = x;
    py = y;
  }

  void step() {
   
    int choice = int(random(4));

    if (choice == 0) {
      //x++;
      x += 1;
    } else if (choice == 1) {
      //x--;
      x -= 1;
    } else if (choice == 2) {
      //y++;
      y += 1;
    } else {
      y -= 1;
      //y--;
    }
  }
}
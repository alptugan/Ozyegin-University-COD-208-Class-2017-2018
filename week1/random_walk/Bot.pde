class Bot {

  // current x & y coordinates
  int x;
  int y;

  // previous x & y coordinates
  int px;
  int py;
  
  int red;
  int green;
  int blue;
  
 
  // Constructer function
  Bot(int _x, int _y, int _red, int _green, int _blue) {

    // starting point
    x = _x;
    y = _y;

    px = x;
    py = y;
    
    red = _red;
    green = _green;
    blue = _blue;
  }


  void display() {

    // Stroke color
    stroke(red,green,blue);
    

    line(px, py, x, y);

    fill(255, 0, 0);
    noStroke();
    //ellipse(x,y,5,5);
    //point(x,y);
    px = x;
    py = y;
  }

  void step() {

    int choice = int(random(4));

    if (choice == 0 && x < width) {
      //x++;
      x += 4;
    } else if (choice == 1 && x > 0) {
      //x--;
      x -= 4;
    } else if (choice == 2 && y < height) {
      //y++;
      y += 4;
    } else if(choice == 3 && y > 0){
      y -= 4;
      //y--;
    }
    
   
  }
}
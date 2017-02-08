// Declaration
Bot user;
Bot user2;
Bot user3;
Bot user4;

void setup() {
  size(400,400);
  background(255);
  
  // initialize
  user = new Bot(10,10, 255,0,0);
  user2 = new Bot(380,10, 0, 255, 0);
  user3 = new Bot(380,380, 0,0, 255);
  user4 = new Bot(80,380, 255,155,0);
}

void draw() {
  
  
  user.step();
  user.display();
  
  
  user2.display();
  user2.step();
  
  user3.display();
  user3.step();
  
  user4.display();
  user4.step();
}

void keyPressed() {
  saveFrame(); 
}
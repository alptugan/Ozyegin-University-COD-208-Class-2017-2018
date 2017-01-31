Bot user;

void setup() {
  size(400,400);
  background(255);
  user = new Bot();
}

void draw() {
  user.display();
  user.step();
}
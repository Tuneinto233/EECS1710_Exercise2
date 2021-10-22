Soldier soldier1;
Soldier soldier2;


void setup() {
  size(1280, 720, P2D);
  soldier1 = new Soldier();
  soldier2 = new Soldier();
}

void draw() {
  background(255);
  soldier1.draw();
  soldier2.draw();
}

void mousePressed() {
}

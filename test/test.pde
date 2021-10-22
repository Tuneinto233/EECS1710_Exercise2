float spawnHeight;
float spawnWidth;
PImage soldier;


void setup() {
  size(1280, 720, P2D);
  soldier = loadImage("soldier.png");
  imageMode(CENTER);
  spawnWidth = -100;
  spawnHeight = 360;
}

void soldierSpawn() {
  image(soldier, spawnWidth, spawnHeight);
}

void soldierMove() {
  if (spawnWidth < width+100) {
    spawnWidth += 1;
  } else {
    spawnWidth = -100;
  }
}

void draw() {
  background(255);
  soldierSpawn();
  soldierMove();
}

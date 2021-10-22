class Soldier {
  float spawnHeight;
  float spawnWidth;
  float speed;
  PImage soldier;


  Soldier() {
    soldier = loadImage("soldier.png");
    imageMode(CENTER);
    soldier.resize(100, 100);
    spawnWidth = -50;
    spawnHeight = random(30, 670);
    speed = random (1, 10);
  }

  void soldierSpawn() {
    image(soldier, spawnWidth, spawnHeight);
  }

  void soldierMove() {
    if (spawnWidth < width+100) {
      spawnWidth += speed;
    } else {
      spawnWidth = -100;
    }
  }

  void draw() {
    soldierSpawn();
    soldierMove();
  }
}

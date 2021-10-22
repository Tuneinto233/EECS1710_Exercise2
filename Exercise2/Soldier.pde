class Soldier {
  float spawnHeight;
  float spawnWidth;
  PImage soldier;


  Soldier() {
    soldier = loadImage("soldier.png");
    imageMode(CENTER);
    soldier.resize(100, 100);
    spawnWidth = -50;
    spawnHeight = random(50, 670);
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
}

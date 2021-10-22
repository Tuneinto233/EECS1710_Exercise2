class Soldier {
  float spawnHeight = random(50, 1230);
  float spawnWidth;
  PImage soldier;



  Soldier() {
    soldier = loadImage("soldier.png");
    imageMode(CENTER);
    spawnWidth = -50;
    spawnHeight = random(50, 1230);
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

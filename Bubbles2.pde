// Star class
class Star {
  float x, y, vx, vy, size;
  int h, s, b;

  Star() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = random(1, 5);
    size = random(10, 50);
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }

  void show() {
    fill(255, 255,255, 127);
    circle(x, y, size);
  }

  void act() {
    y = y - vy;
    if (y < 0) {
      y = height;
    }
    // Uncomment this to increase size
    // size = size + 0.1;
  }
}

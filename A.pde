class Bubbles {
  float x, y, vx, vy, size;
  int h, s, b;

  Bubbles() {
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
    circle(x+3, y-2, 5);
    circle(x+4, y+3, 3);
  }

  void act() {
    y = y - vy;
    if (y < 0) {
      y = height;
    }
  }
}

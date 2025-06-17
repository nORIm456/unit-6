// Particles class
class Particles {
  float x, y, vx, vy, size;
  int h, s, b;
  
  Particles() {
    x = random(0, width);
    y = random(0, height);
    vx = random(1, 5);
    vy = 0;
    size = vx;
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }

  void show() {
    fill(255);
    circle(x, y, size);
  }

  void act() {
    x = x + vx;
    if (x > width) {
      size = vx;
      x = -size;
    }
    // Uncomment this to increase size
    // size = size + 0.1;
  }
}

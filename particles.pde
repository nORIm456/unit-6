// Particles class
class Particles {
  float x, y, vx, vy, size, vx2, size2;
  int h, s, b;
  
  
  Particles() {
    x = random(0, width);
    y = random(0, height);
    vx = random(1, 5);
    vx2 = random(10, 20);
    vy = 0;
    size = vx;
    size2 = vx2;
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }

  void show() {
    fill(h, s, b);
    circle(x, y, size);
    circle(x+5, y+2, size2);
    triangle(x-10, y-10, x, y, x-10, y+10);
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

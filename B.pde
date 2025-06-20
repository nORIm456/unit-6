class Clouds {

  float x, y, vx, size;
  int h, s, b;
 
  Clouds() {
    x = random(width);
    y = random(height - 100, height - 20); 
    vx = random(0.2, 0.6);
    size = random(60, 120);
    h = 255;
    s = 255;
    b = 255;
  }

  void show() {
    noStroke();
    fill(255, 255, 255, 40);
    ellipse(x, y, size, size / 2);
    ellipse(x + size * 0.3, y + 5, size * 0.8, size * 0.4);
    ellipse(x - size * 0.3, y - 5, size * 0.8, size * 0.4);

  }

  void act() {
    x += vx;
    if (x > width + size) {
      x = -size;
      y = random(height - 100, height - 20); 
    }
  }
}

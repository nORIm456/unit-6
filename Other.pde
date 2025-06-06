class Ripple {
  
  //instance varibales or fields
  float x, y, vx, vy, size, alpha;
  int h, s, b;
  
  //constructer: special function that defines how
  //         a object of this class is born.
  //         Defines a initial values for fields.
  Ripple() {
    x = random(width);
    y = random(height);
    //vx = 0;
    //vy = random(1, 5);
    size = random(200);
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }
  
  //behaviour functions:
  void show() {
    //fill(h, s, b);
    alpha = map(size, 0 , 200, 255, 0);
    stroke(h, s, b, alpha);
    ellipse(x, y, size, size/2);
    
  }
  
  void act() {
    size = size + 3;
    if( size >= 200) {
      x = mouseX;
      y = mouseY;
      size = 0;
  }
 }
 
}
